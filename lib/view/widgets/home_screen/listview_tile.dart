import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/bloc/detail_bloc/detail_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/view/screens/detail_screen.dart';
import 'package:habit/view/widgets/dialog/add_dialog.dart';

class ListviewTile extends StatelessWidget {
  final String habitName;
  final int index;
  const ListviewTile({super.key, required this.habitName, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Slidable(
        startActionPane: ActionPane(
            // 250/screen width is to avoid the checkboxs (total check box size is 250 always (50 *5))
            extentRatio: 250 / MediaQuery.of(context).size.width,
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                  icon: Icons.delete,
                  onPressed: (context) {
                    context
                        .read<HabitBloc>()
                        .add(HabitEvent.deleteHabits(index: index));
                  }),
              SlidableAction(
                  icon: Icons.edit,
                  onPressed: (context) {
                    showDialog(
                        context: context,
                        builder: (context) => CustomInputDialog(
                              onCancel: () {},
                              onAddOrEdit: (value) {
                                context.read<HabitBloc>().add(
                                    HabitEvent.editHabit(
                                        index: index, habitName: value));
                              },
                              buttonText: "Edit",
                              isAdd: false,
                              habitName: habitName,
                            ));
                  }),
            ]),
        child: Container(
          color: Color.fromRGBO(247, 247, 247, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: GestureDetector(
                        onTap: () {
                          context
                              .read<DetailBloc>()
                              .add(fetchHabitDetail(index: index));
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    index: index,
                                  )));
                        },
                        child: Text(habitName)),
                  )),
              SizedBox(
                width: 250,
                child: Row(
                  children: [
                    for (int columnIndex = 0; columnIndex < 5; columnIndex++)
                      BlocConsumer<CheckBoxBloc, CheckBoxState>(
                        buildWhen: (previous, current) {
                          if (current is checkBoxloaded &&
                              previous is checkBoxloaded) {
                            if (current.checkList[index][columnIndex] !=
                                previous.checkList[index][columnIndex]) {
                              return true;
                            } else {
                              return false;
                            }
                          } else {
                            return false;
                          }
                        },
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state is checkBoxloaded) {
                            //log("rebuild widget at row $index and column $columnIndex");
                            return Checkbox(
                              value: state.checkList[index][columnIndex],
                              onChanged: (value) {
                                context.read<CheckBoxBloc>().add(
                                      CheckBoxEvent.toggleCheckBox(
                                        value:
                                            value ?? false, // Handle null value
                                        row: index, // Current row
                                        column: columnIndex, // Current column
                                      ),
                                    );
                                // context
                                //     .read<HabitBloc>()
                                //     .add(HabitEvent.refreshHabit());
                              },
                            );
                          } else {
                            return SizedBox();
                          }
                        },
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
