// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HabitHiveOperation {
  inItHive() async {
    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(DateStatusAdapter());
    Hive.registerAdapter(HabitAdapter());

    await Hive.openBox<Habit>('habit');
  }

  Box<Habit> _openBox() {
    return Hive.box<Habit>('habit');
  }

  Future<String> addHabit(Habit habit) async {
    try {
      var habitBox = _openBox();
      habitBox.add(habit);
      return 'Add Succes';
    } catch (e) {
      return 'Fail to add in Hive - ${e.toString()}';
    }
  }

  Future<String> editHabit(int index, String habitName) async {
    try {
      var habitBox = _openBox();
      habitBox.putAt(
          index,
          (habitBox.getAt(index) == null)
              ? habitBox.getAt(index)!.copyWith(habit: habitName)
              : throw ('cannot edit due to index not avaialable'));
      return 'Edit Succes';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> deletehabit(int index) async {
    try {
      var habitBox = _openBox();
      habitBox.deleteAt(index);
      return 'delete succes';
    } catch (e) {
      return e.toString();
    }
  }

  Future<Habit> getHabit(int index) async {
    var habitBox = _openBox();
    return Habit(habit: 'test', dateStatus: []);
  }

  Future<List<Habit>> getAllHabit() async {
    try {
      var habitBox = _openBox();
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
    var habitBox = _openBox();
    return 'close succes';
  }
}
