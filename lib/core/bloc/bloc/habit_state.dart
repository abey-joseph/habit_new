part of 'habit_bloc.dart';

@freezed
class HabitState with _$HabitState {
  const factory HabitState.initial() = _Initial;
  const factory HabitState.loading() = _Loading;
  const factory HabitState.loaded({required List<String> habits}) = _Loaded;
  const factory HabitState.error() = _Error;
}
