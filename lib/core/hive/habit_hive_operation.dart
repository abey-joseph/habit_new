// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HabitHiveOperation {
  inItHive() async {
    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(DateStatusAdapter());
    Hive.registerAdapter(HabitAdapter());

    //await Hive.openBox<Habit>(locator<FirebaseAuthActions>().currentUser!.uid);
  }

  Future<Box<Habit>> _openBox() async {
    // check if the box is open then habitBox.open otherwise habitBox.openBox

    if (Hive.isBoxOpen(locator<FirebaseAuthActions>().currentUser!.uid)) {
      return Hive.box<Habit>(locator<FirebaseAuthActions>().currentUser!.uid);
    } else {
      return await Hive.openBox<Habit>(
          locator<FirebaseAuthActions>().currentUser!.uid);
    }
  }

  Future<String> addHabit(Habit habit) async {
    try {
      var habitBox = await _openBox();
      habitBox.add(habit);
      return 'Add Succes';
    } catch (e) {
      return 'Fail to add in Hive - ${e.toString()}';
    }
  }

  Future<String> editHabitName(int index, String habitName) async {
    try {
      var habitBox = await _openBox();
      habitBox.putAt(
          index,
          (habitBox.getAt(index) != null)
              ? habitBox.getAt(index)!.copyWith(habit: habitName)
              : throw ('cannot edit due to index not avaialable'));
      return 'Edit Succes';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> editHabitDateStatus(
      int index, int column, bool isCompleted) async {
    try {
      var habitBox = await _openBox();

      //log("started saving");
      List<DateStatus> dateStatusList = [];

      try {
        dateStatusList = habitBox.getAt(index)!.dateStatus.toList();

        DateStatus dateStatus = habitBox
            .getAt(index)!
            .dateStatus[column]
            .copyWith(isCompleted: isCompleted);

        dateStatusList[column] = dateStatus;
      } catch (e) {
        rethrow;
      }

      habitBox.putAt(
          index,
          (habitBox.getAt(index) != null)
              ? habitBox.getAt(index)!.copyWith(dateStatus: dateStatusList)
              : throw ('cannot edit dateStatus due to index not avaialable'));
      return 'Edit Date Status Succes';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> deletehabit(int index) async {
    try {
      var habitBox = await _openBox();
      habitBox.deleteAt(index);
      return 'delete succes';
    } catch (e) {
      return e.toString();
    }
  }

  Future<Habit> getHabit(int index) async {
    var habitBox = _openBox();
    return Habit(
        habit: 'test',
        uid: (locator<FirebaseAuthActions>().currentUser == null)
            ? 'null'
            : locator<FirebaseAuthActions>().currentUser!.uid,
        dateStatus: []);
  }

  Future<List<Habit>> getAllHabit() async {
    try {
      var habitBox = await _openBox();
      return habitBox.values.toList();
    } on HiveError catch (e) {
      log("hive error while trying to fetch all data - ${e.toString()}");
      return [];
    } catch (e) {
      log("unknown error while trying to fetch all data from hive");
      return [];
    }
  }

  Future<String> closeBox() async {
    Hive.close();
    return 'close succes';
  }
}
