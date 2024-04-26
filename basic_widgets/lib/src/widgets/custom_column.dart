import 'package:flutter/material.dart';

void main() {
  runApp(const CustomColumn());
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 20,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 40,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.black,
              ),
            ),
          ]),
    );
  }
}
