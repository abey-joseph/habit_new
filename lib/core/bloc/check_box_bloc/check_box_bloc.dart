import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/data/constant/habit_status_list_and_operations/habit_status_list_and_operations.dart';

part 'check_box_event.dart';
part 'check_box_state.dart';
part 'check_box_bloc.freezed.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(checkBoxinitial()) {
    on<refreshCheckBox>((event, emit) {
      emit(checkBoxloaded(checkList: checkBoxList.toList()));
    });
    on<toggleCheckBox>(
      (event, emit) {
        changeDataInCheckBoxList(event.row, event.column, event.value);

        emit(checkBoxloaded(
            checkList:
                checkBoxList.map((innerList) => innerList.toList()).toList()));
      },
    );
  }
}
