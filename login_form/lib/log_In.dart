import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_form/button.dart';
import 'package:login_form/signUp.dart';

import 'constants.dart';

class Log_In extends StatefulWidget {
  const Log_In({super.key});

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      buildStackLogIn(context),
                      const  SizedBox(
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
                                        color:darkBlue()),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: darkBlue()),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: lightBlue()),
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
                              const   SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.only(
                                    bottom:
                                        MediaQuery.of(context).viewInsets.bottom),
                                autofocus: true,
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
                                        color: darkBlue()),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color:darkBlue()),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: lightBlue()),
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
                       Padding(
                        padding: EdgeInsets.all(5),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style:
                                TextStyle(fontSize: 12, color: darkBlue()),
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
                              const   Text(
                                'Don\'t have an Account?',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => signUp(),));
                              }, child: Text('Sign Up',style: TextStyle(color: darkBlue()),)),
                            ],
                          )),
                    ],
                  ),
                ),
              ))
        ),
      ),
    );
  }
}
