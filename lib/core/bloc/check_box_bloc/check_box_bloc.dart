import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit/data/constant/habit_status_list_and_operations/habit_status_list_and_operations.dart';

part 'check_box_event.dart';
part 'check_box_state.dart';
part 'check_box_bloc.freezed.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(checkBoxinitial()) {
    on<refreshCheckBox>((event, emit) {
      try {
        List<List<bool>> new2DList =
            checkBoxList.map((innerList) => innerList.toList()).toList();

        emit(checkBoxloaded(checkList: new2DList, hash: new2DList.hashCode));
      } catch (e) {
        emit(CheckBoxState.error(e: e.toString()));
      }
    });
    on<toggleCheckBox>(
      (event, emit) async {
        //log(message)
        await changeDataInCheckBoxList(event.row, event.column, event.value);

        //log('toggle checkbox event triggered');

        List<List<bool>> new2DList =
            checkBoxList.map((innerList) => innerList.toList()).toList();

        emit(checkBoxloaded(checkList: new2DList, hash: new2DList.hashCode));
      },
    );
  }
}
