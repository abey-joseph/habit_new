import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/constant/habit_status_list_and_operations/habit_status_list_and_operations.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';

List<String> habitList = [];

Future<List<String>> getHabitNameList() async {
  //get all data from hive
  List<Habit> habits = await locator<HabitHiveOperation>().getAllHabit();

  //make the list empty
  habitList = [];

  //get all the habit names to a list
  for (Habit habit in habits) {
    habitList.add(habit.habit);
  }

  //everytime when fetching the habit names refresh the checkbox list also
  //for that there is a function in the other file for that list which takes list<Habit> and converts the data
  fillingDataToCheckBoxList(habits);

  return habitList;
}

Future<String> addHabit(String habitName) async {
  DateTime today = DateTime.now();

  //vconvert to Habit class
  Habit habit = Habit(
      habit: habitName,
      uid: (locator<FirebaseAuthActions>().currentUser == null)
          ? 'null'
          : locator<FirebaseAuthActions>().currentUser!.uid,
      dateStatus: List.generate(
          5,
          (index) => DateStatus(
              date: today.subtract(Duration(days: 4 - index)),
              isCompleted: false)));

  //add and get oupput
  String output = await locator<HabitHiveOperation>().addHabit(habit);

  //retrive data from hive to habitList to make similar changes in local list also
  habitList = await getHabitNameList();

  return output;
}

Future<String> editHabitName(int index, String habitName) async {
  //edit and get oupput
  String output =
      await locator<HabitHiveOperation>().editHabitName(index, habitName);

  //retrive data from hive to habitList to make similar changes in local list also
  habitList = await getHabitNameList();

  return output;
}

Future<String> deleteHabit(int index) async {
  //delete and get ouput
  String output = await locator<HabitHiveOperation>().deletehabit(index);

  //retrive data from hive to habitList to make similar changes in local list also
  habitList = await getHabitNameList();

  return output;
}
