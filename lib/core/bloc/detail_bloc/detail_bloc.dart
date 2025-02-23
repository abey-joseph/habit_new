import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/data/model/habit_model.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(initialDetail()) {
    on<fetchHabitDetail>((event, emit) async {
      emit(loadingHabitDetail());

      try {
        log("trying to fetch habit detail");
        Habit habit = await locator<HabitHiveOperation>().getHabit(event.index);
        emit(loadedHabitDetail(habit: habit));
        log("loaded emitted");
      } catch (e) {
        emit(errorHabitDetail(e: e.toString()));
      }
    });
    on<refreshHabitDetail>((event, emit) {});
  }
}
