import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/screens/intro_screen.dart';
import 'package:habit/view/screens/settings_screen.dart';
import 'package:habit/view/widgets/dialog/add_dialog.dart';
import 'package:habit/view/widgets/global/date_row_widget.dart';
import 'package:habit/view/widgets/home_screen/listview_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HabitBloc, HabitState>(
      listener: (context, state) async {},
      child: Scaffold(
        backgroundColor: Color.fromRGBO(233, 233, 233, 1),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsScreen()));
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => CustomInputDialog(
                            habitName: '',
                            isAdd: true,
                            buttonText: 'Add',
                            onCancel: () {},
                            onAddOrEdit: (value) {
                              context
                                  .read<HabitBloc>()
                                  .add(HabitEvent.addHabits(habitName: value));
                            }));
                  },
                  icon: Icon(
                    Icons.add_circle,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () {
                    locator<HabitHiveOperation>().closeBox();

                    locator<FirebaseAuthActions>().signout();
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) =>
                              IntroScreen()), // Replace NewScreen with your target screen
                      (Route<dynamic> route) =>
                          false, // This removes all previous routes
                    );
                  },
                  icon: Icon(
                    Icons.logout,
                    size: 30,
                  )),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 14),
                child: SizedBox(
                  height: 50,
                  child: DateRow(),
                ),
              ),
              Flexible(
                child: BlocConsumer<HabitBloc, HabitState>(
                  buildWhen: (previous, current) => (previous != current),
                  listener: (context, state) {},
                  builder: (context1, state) {
                    if (state is loading) {
                      return Text("Loading...");
                    } else if (state is error) {
                      log(state.e);
                      return Center(
                        child: Text("Error"),
                      );
                    } else if (state is loaded) {
                      return ListView.builder(
                          itemCount: state.habits.length,
                          itemBuilder: (context1, index) {
                            return ListviewTile(
                                habitName: state.habits[index], index: index);
                          });
                    } else {
                      return Center(
                        child: Text("Unknown state"),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
