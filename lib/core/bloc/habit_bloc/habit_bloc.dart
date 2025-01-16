import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/data/constant/habit_list_and_operation/habit_list_and_operation.dart';

part 'habit_event.dart';
part 'habit_state.dart';
part 'habit_bloc.freezed.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc() : super(_Initial()) {
    on<_FetchHabit>((event, emit) async {
      emit(HabitState.loading());

      try {
        emit(_Loaded(habits: await getHabitNameList()));
      } catch (e) {
        log(e.toString());
        emit(HabitState.error());
      }
    });
    on<_AddHabit>((event, emit) async {
      //save the data first and get the output either success or error
      String output = await addHabit(event.habitName);

      //print the output
      log(output);

      //emit new state with new data
      emit(HabitState.loaded(habits: habitList.toList()));
    });

    on<_EditHabit>((event, emit) async {
      //edit the data and get output
      String output = await editHabit(event.index, event.habitName);

      //print output
      log(output);

      //emit new state
      emit(HabitState.loaded(habits: habitList));
    });

    on<_DeleteHabit>((event, emit) async {
      //delete data and get output
      String output = await deleteHabit(event.index);

      //print output
      log(output);

      //emit new state
      emit(HabitState.loaded(habits: habitList));
    });
  }
}
