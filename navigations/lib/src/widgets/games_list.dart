import 'package:flutter/material.dart';

class GamesList extends StatelessWidget {
  const GamesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Colors.yellow,
        shadowColor: Colors.green,
        elevation: 12.0,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('No hay juegos programados...'),
        ),
      )
    );
  }
}