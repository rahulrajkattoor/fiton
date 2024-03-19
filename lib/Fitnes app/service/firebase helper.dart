
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiton/Fitnes%20app/fitnes%20home%20page.dart';
import 'package:fiton/Fitnes%20app/service/snackbar.dart';
import 'package:flutter/material.dart';

import '../Login page.dart';

class Firebaseauth_method {
  final FirebaseAuth _auth;

  Firebaseauth_method(this._auth,);


  User get user => _auth.currentUser!; //

  //State persistence
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();



  //Email Signup
  Future<void> Signupemail({
    required String email,
    required String password,
    required String name,
    required BuildContext
    context, //use to display like a snack bar items & Firestore (provider)
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password);

      await _auth.currentUser!.updateProfile(displayName: name);

      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }



//Email login
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (_auth.currentUser!.emailVerified) {
        // User is verified, navigate to the home page
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    fitnesnavigation())); // Replace '/home' with your actual home page route
      } else {
        // User not verified, send an email verification
        await sendEmailVerification(context);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

//Email verify
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email verification sent!');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Display error message
    }
  }

  // Sign out
  Future<void> signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginpage()));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // Delete account
  Future<void> deleteAccount(BuildContext context) async {
    try {
      await _auth.currentUser!.delete();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginpage()));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
      // Displaying the error message
      // if an error of requires-recent-login is thrown, make sure to log
      // in user again and then delete account.
    }
  }
}
