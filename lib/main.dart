import 'package:flutter/material.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up dependency injection
  setupDependencies();

  //init Firebase
  String firebaseInItOutput = await locator<FirebaseAuthActions>().initialize();

  // Initialize Hive
  //locator is the global instance of get_it (defined inside lib/data/dependencies/get_it_dependencies.dart)
  await locator<HabitHiveOperation>().inItHive();

  if (firebaseInItOutput == 'Firebase Initialized') {
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<HabitBloc>(
          create: (context) => HabitBloc()..add(HabitEvent.fetchHabit()),
        ),
        BlocProvider<CheckBoxBloc>(create: (context) => CheckBoxBloc()),
      ],
      child: HabitTracker(),
    ));
  } else {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Network issue... Please try again")),
      ),
    ));
  }
}

class HabitTracker extends StatelessWidget {
  const HabitTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: SplashScreen());
  }
}
