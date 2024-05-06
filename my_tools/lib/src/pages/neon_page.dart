import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class MyNeon extends StatelessWidget {
  const MyNeon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: double.infinity,
      color: Colors.black,
      
      child: Neon(
        text: 'Hola, soy Neon',
        color: Colors.red,
        font: NeonFont.Cyberpunk,
        flickeringText: true,
        flickeringLetters: const [0,1,5,6],
    ));
  }
}
