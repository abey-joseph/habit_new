part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.fetchHabitDetail({required int index}) =
      fetchHabitDetail;
  const factory DetailEvent.refreshHabitDetail() = refreshHabitDetail;
}
