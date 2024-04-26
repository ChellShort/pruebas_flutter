import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  const CustomText({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Text(
        'Aprendamos con proyectos', 
        style: TextStyle(
          color: Colors.blue,
          //fontSize: 35.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          ),
        maxLines: 2,
        overflow:TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        // ignore: deprecated_member_use
        textScaleFactor: 2.5,
      );
  }
}