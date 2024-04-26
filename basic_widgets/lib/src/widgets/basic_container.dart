import 'package:flutter/material.dart';

void main () {
  runApp(const BasicContainer());
  }

class BasicContainer extends StatelessWidget {
  const BasicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 350.0,
      height: 350.0,
      alignment: Alignment.center,
      child: const Text(
        'Basic Container',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}