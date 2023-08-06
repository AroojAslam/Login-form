import 'dart:async';

import 'package:flutter/material.dart';

import 'constants.dart';
import 'log_In.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Log_In(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lightBlue(),
      body:const SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(height: 200,
                  width: 200,
                  image: AssetImage('assets/images/log_in.png')),
              Text('WellCome',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
            ],
          ),
        ),
      ),
    );
  }
}

