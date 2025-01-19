import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/view/screens/detail_screen.dart';

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
                        .add(HabitEvent.deleteHabit(index: index));
                  }),
              SlidableAction(icon: Icons.edit, onPressed: (context) {}),
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailScreen()));
                        },
                        child: Text(habitName)),
                  )),
              BlocBuilder<CheckBoxBloc, CheckBoxState>(
                builder: (context, state) {
                  if (state is checkBoxloaded) {
                    return SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          for (int columnIndex = 0;
                              columnIndex < state.checkList[index].length;
                              columnIndex++)
                            Checkbox(
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
                                context
                                    .read<HabitBloc>()
                                    .add(HabitEvent.refreshHabit());
                              },
                            )
                        ],
                      ),
                    );
                  } else {
                    return Text('Loading...');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
