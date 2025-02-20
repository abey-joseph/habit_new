import 'dart:developer';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
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
