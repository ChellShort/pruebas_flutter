import 'package:basic_widgets/src/widgets/basic_listview.dart';
import 'package:basic_widgets/src/widgets/basic_container.dart';
import 'package:basic_widgets/src/widgets/border_container.dart';
import 'package:basic_widgets/src/widgets/custom_column.dart';
import 'package:basic_widgets/src/widgets/custom_row.dart';
import 'package:basic_widgets/src/widgets/custom_text.dart';
import 'package:basic_widgets/src/widgets/netimage_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: SafeArea(
          child: ListView(
            children: const [
              CustomText(),
              NetworkImageContainer(),
              CustomRow(),
              CustomColumn(),
              BasicContainer(),
              BorderContainer()
            ],
          )
        ),
    ));
  }
}
