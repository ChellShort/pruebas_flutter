import 'package:flutter/material.dart';

void main() {
  runApp(const Customtext());
}

class Customtext extends StatelessWidget {
  const Customtext({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
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
      ),
    );
  }
}