import 'package:flutter/material.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/view/intro_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Auth().signout();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) =>
                          IntroScreen()), // Replace NewScreen with your target screen
                  (Route<dynamic> route) =>
                      false, // This removes all previous routes
                );
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
