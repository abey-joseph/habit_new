import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Future<String> logInUserWithEmailAndPass(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
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
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Sign Up Success";
    } on FirebaseAuthException catch (e) {
      return handleAuthException(e);
    } catch (e) {
      return e.toString();
    }
  }

  signout() async {
    await _auth.signOut();
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
