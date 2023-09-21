import 'package:ayush_textbook_assessment/pages/verify.dart';
import 'package:ayush_textbook_assessment/phone.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main(){

   // WidgetsFlutterBinding.ensureInitialized();
   //   await Firebase.initializeApp();

  runApp(MaterialApp(
      initialRoute: 'phone',
      debugShowCheckedModeBanner: false,
      routes: {'phone': (context) => MyPhone(), 'verify': (context) => MyVerify()},
     ));
}