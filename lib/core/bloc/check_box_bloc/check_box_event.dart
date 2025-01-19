part of 'check_box_bloc.dart';

@freezed
class CheckBoxEvent with _$CheckBoxEvent {
  const factory CheckBoxEvent.refreshCheckBox() = refreshCheckBox;
  const factory CheckBoxEvent.toggleCheckBox(
      {required int row,
      required int column,
      required bool value}) = toggleCheckBox;
}
