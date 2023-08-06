
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color darkBlue(){
  return Color(0xFF0D47A1);
}
Color lightBlue(){
  return Color(0xFFE3F2FD);
}

Widget buildStackLogIn(context){
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
              boxShadow: const [
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
              color: darkBlue(),
              boxShadow:const  [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(8.0, 8.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),

              ]
          ),
          child:const Center(
            child: Text('Log In',
              style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,
                  color: Colors.white),),
          ),
        ),
      ),
      Positioned(child:  Container(
          height:MediaQuery.of(context ).size.height * .48 ,
          width: MediaQuery.of(context ).size.width,
          child:const  Column(
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
Widget buildstackSignup(context){
  return Stack(
    children: [
      Positioned(
        left: -10, top: 0,
        child:  Container(
          height: 200,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100,
              boxShadow: const [
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
        left: -50, top: -50,
        child:  Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: darkBlue(),
              boxShadow:const  [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(8.0, 8.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),

              ]
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Center(

              child: Text('Sign Up',
                style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                    color: Colors.white),),
            ),
          ),
        ),
      ),
      Positioned(child:  Container(
          height:MediaQuery.of(context ).size.height * .3 ,
          width: MediaQuery.of(context ).size.width,
          child:const  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/log_in.png'),
                height:200,
                width: 250,
              ),
            ],
          )


      ),
      ),

    ],
  );
}