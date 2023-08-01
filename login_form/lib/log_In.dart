import 'package:flutter/material.dart';

import 'constants.dart';



class Log_In extends StatefulWidget {
  const Log_In({super.key});

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {
  GlobalKey<FormState> formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(

        child: Column(
          children: [
            buildStack(context),

            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          hintText: 'Email',
                          fillColor: Colors.white70,
                          filled: true,
                          prefixIcon:
                          Icon(Icons.email, color: Colors.blue.shade900),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade100),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    SizedBox(height:20 ,),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          hintText: 'Password',
                          fillColor: Colors.white70,
                          filled: true,
                          prefixIcon:
                          Icon(Icons.password, color: Colors.blue.shade900),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade200),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 12, color: Colors.blueAccent),
                ),
              ),
            ),
           SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account?',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      'Register',
                      style:
                      TextStyle( color: Colors.blueAccent, fontSize: 15),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
