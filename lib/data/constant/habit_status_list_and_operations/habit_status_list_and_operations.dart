import 'dart:developer';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';

List<List<bool>> checkBoxList = [];

createMockData(int row) {
//when adding data to a 2D list fir first time we need to add list by list cannot add like [i][j] -
//else it will cause range error

  checkBoxList = []; // Clear the list to ensure no old data remains

  for (int i = 0; i < row; i++) {
    List<bool> innerList = [];
    for (int j = 0; j < 5; j++) {
      innerList.add(false); // Add `false` for each column
    }
    checkBoxList.add(innerList); // Add the inner list to the outer list
  }
}

createMockDataForOneExtraRow() {
//when adding data to a 2D list fir first time we need to add list by list cannot add like [i][j] -
//else it will cause range error

  List<bool> innerList = [false, false, false, false, false];
  checkBoxList.add(innerList);
}

fillingDataToCheckBoxList(List<Habit> list) {
  int i;
  int j;
  int totalHabits;

  totalHabits = list.length;

  //fill that list with all false data first if empty

  createMockData(totalHabits);

  for (i = 0; i < totalHabits; i++) {
    for (j = (list[i].dateStatus.length - 1);
        j >= (list[i].dateStatus.length - 5);
        j--) {
      //log(list[i].dateStatus[j].isCompleted.toString());
      //innerList.add(list[i].dateStatus[j].isCompleted);
      checkBoxList[i][(list[i].dateStatus.length - 1) - j] =
          list[i].dateStatus[j].isCompleted;
    }
  }
}

changeDataInCheckBoxList(int row, int column, bool value) async {
  //save data in local list
  checkBoxList[row][column] = !checkBoxList[row][column];

  //save in hive
  String output = await locator<HabitHiveOperation>()
      .editHabitDateStatus(row, column, checkBoxList[row][column]);

  log(output);
}

addNewColumnIfDateChanges(DateTime currentDate, DateTime lastEntryDate) async {
  int daysFromLastEntry = currentDate.difference(lastEntryDate).inDays;

  await locator<HabitHiveOperation>()
      .addEmptyColumnForDateStatus(daysFromLastEntry);

  //refilling data from the Hive to checkBoxList will be done from the Bloc
}

List<int> dateStatusToProgressChartList(List<DateStatus> list) {
  List<int> progressList = [];
  int progress = 0;
  for (DateStatus item in list) {
    if (item.isCompleted) {
      progress = progress + 2;
      progressList.add(progress);
    } else {
      if (progress != 0) {
        progress = progress - 2;
      }

      progressList.add(progress);
    }
  }
  return progressList;
}

List<DateStatus> fillDummydataInFrontForDateChart(
    List<DateStatus> dateStatusList) {
  DateTime firstDay = dateStatusList[0].date;
  DateTime lastDay = dateStatusList[dateStatusList.length - 1].date;

  int dayOfFirstDay = firstDay.weekday;
  int dayOfLastDay = (lastDay.weekday == 7)
      ? 1
      : lastDay.weekday + 1; // to make sunday as 1 instead of 7
  int daysToAddAtEnd = 7 - dayOfLastDay;

  List<DateStatus> list = dateStatusList.toList();

  try {
    if (dayOfFirstDay != 7) {
      for (var i = 1; i <= dayOfFirstDay; i++) {
        list.insert(
            0,
            DateStatus(
                date: firstDay.subtract(Duration(days: 1)),
                isCompleted: false));
        firstDay = list[0].date;
      }
    }

    if (dayOfLastDay != 7) {
      for (var i = 1; i <= daysToAddAtEnd; i++) {
        list.add(DateStatus(
            date: lastDay.add(Duration(days: i)), isCompleted: false));
      }
    }
  } catch (e) {
    log(e.toString());
  }

  return list;
}
