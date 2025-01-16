import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_event.dart';
part 'habit_state.dart';
part 'habit_bloc.freezed.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc() : super(_Initial()) {
    on<_FetchHabit>((event, emit) {});
    on<_AddHabit>((event, emit) {});
    on<_EditHabit>((event, emit) {});
    on<_DeleteHabit>((event, emit) {});
  }
}
