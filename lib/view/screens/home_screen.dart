import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/screens/intro_screen.dart';
import 'package:habit/view/screens/settings_screen.dart';
import 'package:habit/view/widgets/global/date_row_widget.dart';
import 'package:habit/view/widgets/home_screen/listview_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  context
                      .read<HabitBloc>()
                      .add(HabitEvent.addHabit(habitName: 'Habit'));
                },
                icon: Icon(
                  Icons.add_circle,
                  size: 45,
                )),
            IconButton(
                onPressed: () {
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
              child: BlocBuilder<HabitBloc, HabitState>(
                builder: (context1, state) {
                  if (state is loading) {
                    return Text("Loading...");
                  } else if (state is error) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(state.e)));
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
    );
  }
}
