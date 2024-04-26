import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const RadiusContainer());
}

class RadiusContainer extends StatelessWidget {
  const RadiusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(25.0),
          bottomLeft: Radius.circular(10.0)
        ),
        //borderRadius: BorderRadius.circular(25.0), //radius a todas las esquinas
      ),
    );
  }
}