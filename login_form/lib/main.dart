import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_form/signUp.dart';
import 'package:login_form/splash%20screen.dart';
import 'constants.dart';
import 'log_In.dart';

void main()async {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primaryColor:darkBlue() ),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
