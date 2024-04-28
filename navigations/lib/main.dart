import 'package:flutter/material.dart';
import 'package:navigations/src/pages/HomePage.dart';
//import 'package:navigations/src/pages/page_1.dart';
//import 'package:navigations/src/pages/page_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}