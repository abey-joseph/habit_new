import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/view/home_page.dart';
import 'package:habit/view/intro_screen.dart';

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

    User? user = Auth().currentUser;

    // - if login already - go to homescreen
    // - if log out then got to login screen

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (user != null) {
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
