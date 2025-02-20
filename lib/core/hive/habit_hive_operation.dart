// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HabitHiveOperation {
  static DateTime lastEntryDate = DateTime.now();

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
            .dateStatus[dateStatusList.length - (column + 1)]
            .copyWith(isCompleted: isCompleted);

        dateStatusList[dateStatusList.length - (column + 1)] = dateStatus;
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

  Future<String> addEmptyColumnForDateStatus(int dateDifference) async {
    DateTime today = DateTime.now();
    //log("aboot to change date ");
    try {
      var habitBox = await _openBox();

      for (var j = dateDifference - 1; j >= 0; j--) {
        for (var i = 0; i < habitBox.length; i++) {
          List<DateStatus> list = habitBox.getAt(i)!.dateStatus.toList();
          list.add(DateStatus(
              date: today.subtract(Duration(days: j)), isCompleted: false));
          //log(list.length.toString());
          await habitBox.putAt(
              i, habitBox.getAt(i)!.copyWith(dateStatus: list));
          //log(habitBox.getAt(i)!.dateStatus.toString());
          //await Future.delayed(Duration(seconds: 3));
          //log("edit done for habit at $i for the day ${today.subtract(Duration(days: j))}");
          //log("current habit status list for habit at $i is ${habitBox.getAt(i)!.dateStatus.toString()}");
        }
      }

      //log("new data added for date difference and current data length is ${habitBox.getAt(0)!.dateStatus.length}");

      return 'success';
    } catch (e) {
      return 'error adding empty column to data in hive - the error is ${e.toString()}';
    }
  }

  Future<String> deletehabit(int index) async {
    try {
      var habitBox = await _openBox();

      await habitBox.deleteAt(index);

      //to fix index mismatch after deletion
      var items = habitBox.values.toList();
      await habitBox.clear(); // Clear the box
      try {
        for (var item in items) {
          await habitBox.add(item); // Re-add items sequentially
        }
      } catch (e) {
        log("error re adding data");
      }

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

      //GET THE LAST ENTRY DATE
      lastEntryDate = habitBox
          .getAt(0)!
          .dateStatus[habitBox.getAt(0)!.dateStatus.length - 1]
          .date;

      return habitBox.values.toList();
    } on HiveError catch (e) {
      log("hive error while trying to fetch all data - ${e.toString()}");
      return [];
    } catch (e) {
      log("unknown error while trying to fetch all data from hive ${e.toString()}");
      return [];
    }
  }

  Future<String> closeBox() async {
    Hive.close();
    return 'close succes';
  }
}
