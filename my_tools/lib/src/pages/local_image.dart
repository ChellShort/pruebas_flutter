import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.grey,
            Colors.blueGrey,
            Colors.blue
          ],
          stops: [
            0.3, 
            0.5,
            0.8],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      
      ),
      child: const Image(
        height: 350.0,
        width: double.infinity,
        image: AssetImage(
          'assets/fallout.png' //para replicar esto visita el pubspec y agrega la imagen
          ),
      ),
    );
  }
}
