import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/screens/home_screen.dart';
import 'package:habit/view/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //WidgetsFlutterBinding.ensureInitialized();

    // check if sign in or not

    User? user = locator<FirebaseAuthActions>().currentUser;

    // - if login already - go to homescreen
    // - if log out then got to login screen

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (user != null) {
        if (!mounted) return;
        context.read<HabitBloc>().add(HabitEvent.fetchHabit());
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => IntroScreen()),
        );
      }
    });

    // // for mock testing we go to login screen after 1 sec of delay

    // Future.delayed(Duration(microseconds: 1000));

    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}
