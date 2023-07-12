import 'package:flutter/material.dart';

void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    boxShadow: const [
                    BoxShadow(
                    color: Colors.black26,
                    offset: Offset(10.0, 10.0),
                    blurRadius: 25.0,
                    spreadRadius: 2.0,
                  ),

              ]
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      const Image(
                        image: AssetImage('assets/images/login.png'),
                        height: 150,
                        width: 250,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.white70,
                          filled: true,
                          prefixIcon:
                              Icon(Icons.email, color: Colors.blue.shade900),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade100),
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white70,
                          filled: true,
                          prefixIcon:
                              Icon(Icons.password, color: Colors.blue.shade900),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue.shade200),
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.indigoAccent, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 50,
                  width: 400,
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
                child: Text(
                  '---------- OR ----------',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/google.png'),
                        height: 40,
                        width: 40,
                      ),
                      Center(
                        child: Text('Login With Google'),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New to Logistics?',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        'Register',
                        style:
                            TextStyle(color: Colors.indigoAccent, fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
