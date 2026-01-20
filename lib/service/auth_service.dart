
import 'dart:developer';

import 'package:computer_app/view/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static FirebaseAuth auth = FirebaseAuth.instance;
  // Function for signUp
  static void signUp(BuildContext context,String email,String password) async{
     try{
         await auth.createUserWithEmailAndPassword(email: email, password: password);
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
     }catch(e){
         log("${e.toString()}");
     }
  }
  static void signIn(BuildContext context, String email,String password)async{
    try{
       await  auth.signInWithEmailAndPassword(email: email, password: password);
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }catch(e){
      log("${e.toString()}");
    }
  }
}
