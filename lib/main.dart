import 'package:flutter/material.dart';
import 'package:habit/core/bloc/detail_bloc/detail_bloc.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/core/shared_preferences/prefs.dart';
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

  //init Shared preference
  await locator<Prefs>().inItPrefs();

  if (firebaseInItOutput == 'Firebase Initialized') {
    //signout if already installed before
    bool isFirstTime = await locator<Prefs>().checkFirstTime();
    if (isFirstTime) {
      await locator<FirebaseAuthActions>().signout();
    }

    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<HabitBloc>(create: (context) => HabitBloc()),
        BlocProvider<CheckBoxBloc>(
            create: (context) => locator<CheckBoxBloc>()),
        BlocProvider<DetailBloc>(create: (context) => DetailBloc()),
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
