part of 'check_box_bloc.dart';

@freezed
class CheckBoxState with _$CheckBoxState {
  const factory CheckBoxState.initial() = checkBoxinitial;
  const factory CheckBoxState.loading() = checkBoxloading;
  const factory CheckBoxState.loaded({required List<List<bool>> checkList}) =
      checkBoxloaded;
  const factory CheckBoxState.error({required String e}) = checkBoxerror;
}
