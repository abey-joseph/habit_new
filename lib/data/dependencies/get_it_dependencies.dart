import 'package:get_it/get_it.dart';
import 'package:habit/core/bloc/check_box_bloc/check_box_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';
import 'package:habit/core/shared_preferences/prefs.dart';

final locator = GetIt.instance;

void setupDependencies() async {
  locator.registerLazySingleton<HabitHiveOperation>(() => HabitHiveOperation());
  locator.registerSingleton<FirebaseAuthActions>(FirebaseAuthActions());
  locator.registerSingleton(Prefs());
  locator.registerSingleton(CheckBoxBloc());
  await locator.allReady();
}
