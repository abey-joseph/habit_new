part of 'habit_bloc.dart';

@freezed
class HabitState with _$HabitState {
  const factory HabitState.initial() = initial;
  const factory HabitState.loading() = loading;
  const factory HabitState.loaded({required List<String> habits}) = loaded;
  const factory HabitState.error({required String e}) = error;
}
