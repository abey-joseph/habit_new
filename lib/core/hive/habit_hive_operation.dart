// ignore_for_file: unused_local_variable

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
    var habitBox = _openBox();
    return 'Add Succes';
  }

  Future<String> editHabit(Habit habit) async {
    var habitBox = _openBox();
    return 'Edit Succes';
  }

  Future<String> deletehabit(Habit habit) async {
    var habitBox = _openBox();
    return 'delete succes';
  }

  Future<Habit> getHabit(int index) async {
    var habitBox = _openBox();
    return Habit(habit: 'test', dateStatus: []);
  }

  Future<List<Habit>> getAllHabit() async {
    var habitBox = _openBox();
    return [
      Habit(habit: 'test', dateStatus: []),
    ];
  }

  Future<String> closeBox() async {
    var habitBox = _openBox();
    return 'close succes';
  }
}
