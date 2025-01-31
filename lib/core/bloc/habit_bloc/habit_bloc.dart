import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/constant/habit_list_and_operation/habit_list_and_operation.dart';
import 'package:habit/data/constant/habit_status_list_and_operations/habit_status_list_and_operations.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';

part 'habit_event.dart';
part 'habit_state.dart';
part 'habit_bloc.freezed.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc() : super(initial()) {
    on<refreshHabit>(
      (event, emit) {
        emit(HabitState.loading());
        emit(loaded(habits: habitList.toList()));

        //trigger event for checkBox
        locator<CheckBoxBloc>().add(refreshCheckBox());
      },
    );

    on<fetchHabit>((event, emit) async {
      emit(HabitState.loading());

      try {
        emit(HabitState.loaded(habits: await getHabitNameList()));

        //trigger event for checkBox
        locator<CheckBoxBloc>().add(refreshCheckBox());
      } catch (e) {
        log(e.toString());
        emit(error(e: e.toString()));
      }

      /*  
        The below code is to check for the data change and trigger actions based on that

        if the last entry date and current date are different then
        it computes the date difference and add empty columns to the data in Hive and local list
        then update the UI
       */

      Timer.periodic(Duration(seconds: 30), (timer) {
        final now = DateTime.now();
        final last = HabitHiveOperation.lastEntryDate;

        final nowDay = DateTime(now.year, now.month, now.day);
        final lastDay = DateTime(last.year, last.month, last.day);
        //log("Last entry date is $lastDay");

        if (nowDay.difference(lastDay).inDays > 0) {
          log("Date checked and found that last entry is ${nowDay.difference(lastDay).inDays} old- so triggering data addition and UI update");
          HabitHiveOperation.lastEntryDate = DateTime.now();
          add(dateChanged(currentDate: nowDay, lastEntryDate: lastDay));
        } else {
          //log("Date checked and found no difference in date from last entry date");
        }
      });
    });

    on<addHabits>((event, emit) async {
      //save the data first and get the output either success or error
      String output = await addHabit(event.habitName);

      //print the output
      log('output $output');

      //emit new state with new data
      emit(loaded(habits: habitList.toList()));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });

    on<editHabit>((event, emit) async {
      //edit the data and get output
      String output = await editHabitName(event.index, event.habitName);

      //print output
      log(output);

      //emit new state
      emit(loaded(habits: habitList));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });

    on<deleteHabits>((event, emit) async {
      //delete data and get output
      String output = await deleteHabit(event.index);

      //print output
      log(output);

      //emit new state
      emit(loaded(habits: habitList));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });

    on<dateChanged>(
      (event, emit) async {
        await addNewColumnIfDateChanges(event.currentDate, event.lastEntryDate);

        HabitHiveOperation.lastEntryDate = DateTime.now();

        //trigger fetch event after editing the data
        add(fetchHabit());
      },
    );
  }
}
