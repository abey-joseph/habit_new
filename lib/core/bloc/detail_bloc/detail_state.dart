part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.initial() = initialDetail;

  const factory DetailState.loadingHabitDetail() = loadingHabitDetail;
  const factory DetailState.loadedHabitDetail(
      {required Habit habit,
      required List<int> listForProgressLineChart}) = loadedHabitDetail;
  const factory DetailState.errorHabitDetail({required String e}) =
      errorHabitDetail;
}
