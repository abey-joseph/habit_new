import 'package:flutter/material.dart';
import 'package:habit/view/login_screen.dart';
import 'package:habit/view/sign_up_screen.dart';
import 'package:habit/view/widgets/login_screen_buttons.dart';
import 'package:habit/view/widgets/text_widgets.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * (2 / 7),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(
                          alpha: 0.25), // Adjust shadow color and opacity
                      blurRadius: 50, // Larger value for softer shadow
                      spreadRadius: 3, // Slightly spread the shadow
                      offset: Offset(0, -3), // Moves shadow slightly upwards
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        loginButton(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        }, Icons.login),
                        loginOrSignUpButtonText("Login")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        loginButton(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        }, Icons.person_add),
                        loginOrSignUpButtonText("SignUp")
                      ],
                    ),
                  ],
                ),
              )),
          Column(
            children: [
              Flexible(
                  flex: 5,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * (5 / 7),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        loginScreenTitile('Welcome To', 45),
                        SizedBox(
                          height: 10,
                        ),
                        loginScreenTitile('Habit Tracker', 50),
                        SizedBox(
                          height: 20,
                        ),
                        Lottie.asset("assets/login_animation.json",
                            width: 250, height: 250, fit: BoxFit.contain)
                      ],
                    ),
                  )),
              Flexible(flex: 2, child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
