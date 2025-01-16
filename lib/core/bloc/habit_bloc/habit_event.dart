part of 'habit_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.fetchHabit() = _FetchHabit;
  const factory HabitEvent.addHabit({required String habitName}) = _AddHabit;
  const factory HabitEvent.deleteHabit({required int index}) = _DeleteHabit;
  const factory HabitEvent.editHabit(
      {required int index, required String habitName}) = _EditHabit;
}
