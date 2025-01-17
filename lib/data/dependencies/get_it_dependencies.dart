import 'package:get_it/get_it.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/core/hive/habit_hive_operation.dart';

final locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<HabitHiveOperation>(() => HabitHiveOperation());
  locator
      .registerLazySingleton<FirebaseAuthActions>(() => FirebaseAuthActions());
}
