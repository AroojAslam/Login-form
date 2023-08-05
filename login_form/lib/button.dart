
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
 final String title;
  VoidCallback ontap;
   myButton({super.key, required this.title, required this.ontap,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Center(
            child: Text(title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
