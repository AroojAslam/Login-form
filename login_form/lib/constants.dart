
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildStack(context){
  return  Stack(
    children: [
      Positioned(
        left: -100, top: 0,
        child:  Container(
          height: 350,
          width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),

              ]
          ),
        ),
      ),
      Positioned(
        left: -70, top: -70,
        child:  Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade900,
              boxShadow:  [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(8.0, 8.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),

              ]
          ),
          child: Center(
            child: Text('Log In',
              style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,
                  color: Colors.white),),
          ),
        ),
      ),
      Positioned(child:  Container(
          height:MediaQuery.of(context ).size.height * 0.5 ,
          width: MediaQuery.of(context ).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/log_in.png'),
                height: 250,
                width: 250,
              ),
            ],
          )


      ),),

    ],
  );
}