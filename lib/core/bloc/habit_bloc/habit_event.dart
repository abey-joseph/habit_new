part of 'habit_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.fetchHabit() = fetchHabit;
  const factory HabitEvent.addHabits({required String habitName}) = addHabits;
  const factory HabitEvent.deleteHabits({required int index}) = deleteHabits;
  const factory HabitEvent.editHabit(
      {required int index, required String habitName}) = editHabit;
  const factory HabitEvent.refreshHabit() = refreshHabit;
  const factory HabitEvent.dateChanged(
      {required DateTime currentDate,
      required DateTime lastEntryDate}) = dateChanged;
}
