import 'package:flutter/material.dart';
import 'log_In.dart';
void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Log_In(),
    );
  }
}
