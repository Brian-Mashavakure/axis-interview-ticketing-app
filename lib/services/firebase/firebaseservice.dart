import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../screens/dashboard/dashboard.dart';

class FirebaseService{


  Future<void> SignUp(BuildContext context,String name, String email, String password) async {
    final auth = FirebaseAuth.instance;
    try {
      final result = await auth.createUserWithEmailAndPassword(email: email.trim(), password: password);
      // // Navigate to the dashboard page after successful account creation
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => Dashboard(),
      // ));
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
          msg: "We had some trouble signing you up please wait and retry in a few minutes",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 16.0
      );
      print(e.toString());
    }
  }


  Future<void> Login(BuildContext context, String email, String password) async{
    final auth = FirebaseAuth.instance;
    try{
      await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );

      //navigate to dashboard page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    }on FirebaseAuthException catch (e){
      Fluttertoast.showToast(
          msg: "We had some trouble logging you in please wait and retry in a few minutes",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 16.0
      );
      print(e.toString());

      //Utils.showSnackBar(e.message);
    }

  }

  }
