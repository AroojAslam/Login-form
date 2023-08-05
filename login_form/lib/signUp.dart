import 'package:flutter/material.dart';
import 'package:login_form/button.dart';

import 'constants.dart';
import 'log_In.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                  Stack(
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
                          color: Colors.blue.shade900,
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
                ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              TextFormField(
                                scrollPadding: EdgeInsets.only(
                                    bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    hintText: 'Email',
                                    fillColor: Colors.white70,
                                    filled: true,
                                    prefixIcon: Icon(Icons.email,
                                        color: Colors.blue.shade900),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade900),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade100),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return value;
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.only(
                                    bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                                autofocus: true,
                                keyboardType: TextInputType.text,
                                controller: nameController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    hintText: 'Name',
                                    fillColor: Colors.white70,
                                    filled: true,
                                    prefixIcon: Icon(Icons.person,
                                        color: Colors.blue.shade900),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade900),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade200),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return value;
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.only(
                                    bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                                keyboardType: TextInputType.text,
                                controller: contactController,
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    hintText: 'Contact',
                                    fillColor: Colors.white70,
                                    filled: true,
                                    prefixIcon: Icon(Icons.phone,
                                        color: Colors.blue.shade900),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade900),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade200),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return value;
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.only(
                                    bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                                keyboardType: TextInputType.text,
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    hintText: 'Password',
                                    fillColor: Colors.white70,
                                    filled: true,
                                    prefixIcon: Icon(Icons.password,
                                        color: Colors.blue.shade900),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade900),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue.shade200),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return value;
                                  } else {
                                    return null;
                                  }
                                },
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      myButton(
                          title: "LogIn",
                          ontap: () {
                            if (formKey.currentState!.validate()) {}
                          }),
                       Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an Account',
                                style:
                                TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                             TextButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => Log_In(),));
                             }, child: Text('LogIn'))
                            ],
                          )),
                    ],
                  ),
                ),
              ))
      ),
    );
  }
}
