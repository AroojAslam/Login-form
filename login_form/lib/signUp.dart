import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_form/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'constants.dart';
import 'log_In.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    contactController.dispose();
  }

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
              buildstackSignup(context),
              const SizedBox(
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
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            hintText: 'Email',
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: Icon(Icons.email, color: darkBlue()),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: darkBlue()),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightBlue()),
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        scrollPadding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        controller: nameController,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            hintText: 'Name',
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: Icon(Icons.person, color: darkBlue()),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: darkBlue()),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightBlue()),
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        scrollPadding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        keyboardType: TextInputType.text,
                        controller: contactController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            hintText: 'Contact',
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: Icon(Icons.phone, color: darkBlue()),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: darkBlue()),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightBlue()),
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        scrollPadding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            hintText: 'Password',
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: Icon(Icons.password, color: darkBlue()),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: darkBlue()),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: lightBlue()),
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
                      const Text(
                        'Already have an Account',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Log_In(),
                                ));
                          },
                          child: Text(
                            'LogIn',
                            style: TextStyle(color: darkBlue()),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ))),
    );
  }
}
