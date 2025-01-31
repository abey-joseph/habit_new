import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habit/core/firebase/firebase_options.dart';
import 'package:habit/core/shared_preferences/prefs.dart';
import 'package:habit/data/dependencies/get_it_dependencies.dart';

class FirebaseAuthActions {
  FirebaseAuth? _auth;

  Future<String> initialize() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      _auth = FirebaseAuth.instance;

      return 'Firebase Initialized';
    } catch (e) {
      return 'Firebase Initialization failed';
    }
  }

  User? get currentUser => _auth!.currentUser;

  Future<String> logInUserWithEmailAndPass(
      {required String email, required String password}) async {
    try {
      await _auth!.signInWithEmailAndPassword(email: email, password: password);

      //indicate in share prefeerene that app is log in state
      locator<Prefs>().logIn();

      return "login Success";
    } on FirebaseAuthException catch (e) {
      return handleAuthException(e);
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> signInUserWithEmailAndPass(
      {required String email, required String password}) async {
    try {
      await _auth!
          .createUserWithEmailAndPassword(email: email, password: password);

      //indicate in share prefeerene that app is log in state
      locator<Prefs>().logIn();

      return "Sign Up Success";
    } on FirebaseAuthException catch (e) {
      return handleAuthException(e);
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> signInOrLogInWithGoogle() async {
    try {
      //begin interactive sign in process with google
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      //if the user cancel the sign up process
      if (gUser == null) throw 'Sign Up Failed - no gAuth';

      //obtain auth details
      GoogleSignInAuthentication gAuth = await gUser.authentication;

      //create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      //sign in with credential
      await _auth!.signInWithCredential(credential);

      return 'Sign Up Success';
    } on FirebaseAuthException catch (e) {
      return handleAuthException(e);
    } catch (e) {
      return 'Sign up failed ${e.toString()}';
    }
  }

  signout() async {
    //indicate in share prefeerene that app is log out state
    locator<Prefs>().logOut();

    await _auth!.signOut();
  }
}

String handleAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case 'weak-password':
      return "The password is too weak. Please use at least 6 characters.";
    case 'email-already-in-use':
      return "This email is already in use. Please use a different email.";
    case 'invalid-email':
      return "The email address is not valid.";
    case 'operation-not-allowed':
      return "Email/password accounts are not enabled.";
    default:
      return "An unknown error occurred: ${e.message}";
  }
}
