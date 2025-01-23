import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/data/constant/habit_list_and_operation/habit_list_and_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';

part 'habit_event.dart';
part 'habit_state.dart';
part 'habit_bloc.freezed.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc() : super(initial()) {
    on<_RefreshHabit>(
      (event, emit) {
        emit(HabitState.loading());
        emit(loaded(habits: habitList.toList()));

        //trigger event for checkBox
        locator<CheckBoxBloc>().add(refreshCheckBox());
      },
    );

    on<_FetchHabit>((event, emit) async {
      emit(HabitState.loading());

      try {
        emit(HabitState.loaded(habits: await getHabitNameList()));

        //trigger event for checkBox
        locator<CheckBoxBloc>().add(refreshCheckBox());
      } catch (e) {
        log(e.toString());
        emit(error(e: e.toString()));
      }
    });
    on<_AddHabit>((event, emit) async {
      //save the data first and get the output either success or error
      String output = await addHabit(event.habitName);

      //print the output
      log('output $output');

      //emit new state with new data
      emit(loaded(habits: habitList.toList()));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });

    on<_EditHabit>((event, emit) async {
      //edit the data and get output
      String output = await editHabitName(event.index, event.habitName);

      //print output
      log(output);

      //emit new state
      emit(loaded(habits: habitList));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });

    on<_DeleteHabit>((event, emit) async {
      //delete data and get output
      String output = await deleteHabit(event.index);

      //print output
      log(output);

      //emit new state
      emit(loaded(habits: habitList));

      //trigger event for checkBox
      locator<CheckBoxBloc>().add(refreshCheckBox());
    });
  }
}
