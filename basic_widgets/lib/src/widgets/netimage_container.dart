import 'package:flutter/material.dart';

class NetworkImageContainer extends StatelessWidget {
  const NetworkImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      //width: 350.0,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        color: Colors.blue,
        image: const DecorationImage(
          image: NetworkImage(
            'https://cdn.pixabay.com/photo/2024/03/13/04/49/ai-generated-8630058_1280.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25.0),
          bottomLeft: Radius.circular(25.0)
        ),
      ),
      child: const Text(
        'Naturaleza',
        textScaleFactor: 2.0,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
