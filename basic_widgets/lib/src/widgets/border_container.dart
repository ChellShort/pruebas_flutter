import 'package:flutter/material.dart';

void main () {
  runApp(const BorderContainer());
  }

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200.0,
      width: 400.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
      ),
      child: const Text(
        'Que cosa',
        // ignore: deprecated_member_use
        textScaleFactor: 2.5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}