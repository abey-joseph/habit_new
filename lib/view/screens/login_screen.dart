import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/habit_bloc/habit_bloc.dart';
import 'package:habit/core/firebase/firebase_auth_actions.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';
import 'package:habit/view/screens/home_screen.dart';
import 'package:habit/view/widgets/global/login_screen_buttons.dart';
import 'package:habit/view/widgets/global/login_textfield.dart';
import 'package:habit/view/widgets/global/text_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String loginOutput;

    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Center(
            child: Hero(
                tag: 'title', child: loginScreenTitile('Habit Tracker', 50)),
          ),

          //spacing
          SizedBox(height: 20),

          //email textfield
          loginTextField(false, "Email", emailController),

          //password textfeild
          loginTextField(true, "Password", passwordController),

          //forgot passeord button

          //login button
          loginButton("LOGIN", () async {
            loginOutput = await locator<FirebaseAuthActions>()
                .logInUserWithEmailAndPass(
                    email: emailController.text,
                    password: passwordController.text);

            if (loginOutput == "login Success") {
              if (!context.mounted) return;

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(loginOutput)));

              context.read<HabitBloc>().add(HabitEvent.fetchHabit());

              if (!context.mounted) return;
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen()), // Replace NewScreen with your target screen
                (Route<dynamic> route) =>
                    false, // This removes all previous routes
              );
            } else {
              if (!context.mounted) return;

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(loginOutput)));
            }
          }),
          googleSignInButton(() async {
            loginOutput =
                await locator<FirebaseAuthActions>().signInOrLogInWithGoogle();

            if (loginOutput == "Sign Up Success") {
              if (!context.mounted) return;

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(loginOutput)));

              context.read<HabitBloc>().add(HabitEvent.fetchHabit());

              if (!context.mounted) return;
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen()), // Replace NewScreen with your target screen
                (Route<dynamic> route) =>
                    false, // This removes all previous routes
              );
            } else {
              if (!context.mounted) return;

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(loginOutput)));
            }
          }),
        ],
      ),
    ));
  }
}
