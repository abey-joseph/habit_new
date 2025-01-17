import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
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

  return habitList;
}

Future<String> addHabit(String habitName) async {
  //vconvert to Habit class
  Habit habit = Habit(
      habit: habitName,
      UID: (locator<FirebaseAuthActions>().currentUser == null)
          ? 'null'
          : locator<FirebaseAuthActions>().currentUser!.uid,
      dateStatus: []);

  //add and get oupput
  String output = await locator<HabitHiveOperation>().addHabit(habit);

  //retrive data from hive to habitList to make similar changes in local list also
  habitList = await getHabitNameList();

  return output;
}

Future<String> editHabit(int index, String habitName) async {
  //edit and get oupput
  String output =
      await locator<HabitHiveOperation>().editHabit(index, habitName);

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
