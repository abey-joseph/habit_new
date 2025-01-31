import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  late SharedPreferences sp;

  inItPrefs() async {
    sp = await SharedPreferences.getInstance();
    log("Share preferenc is initialized $sp");
  }

  Future<bool> checkFirstTime() async {
    bool? isFirstTime = sp.getBool('isFirsttime');

    if (isFirstTime == null || isFirstTime == true) {
      sp.setBool('isFirsttime', false);
      return true;
    }
    return false;
  }

  logOut() {
    sp.setBool('isFirsttime', true);
  }

  logIn() {
    sp.setBool('isFirsttime', false);
  }
}
