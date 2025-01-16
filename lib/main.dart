import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_options.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Set up dependency injection
  setupDependencies();

  // Initialize Hive
  //locator is the global indstance of get_it (defined inside lib/data/dependencies/get_it_dependencies.dart)
  await locator<HabitHiveOperation>().inItHive();

  runApp(HabitTracker());
}

class HabitTracker extends StatelessWidget {
  const HabitTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: MultiBlocProvider(providers: [
          BlocProvider<HabitBloc>(
            create: (context) => HabitBloc()..add(HabitEvent.fetchHabit()),
          ),
        ], child: SplashScreen()));
  }
}
