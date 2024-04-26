import 'package:flutter/material.dart';

void main () {
  runApp(const BasicListView());
}

class BasicListView extends StatelessWidget {
  const BasicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: [
        SizedBox (
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200.0,
                color: Colors.blue,
              ),
              Container(
                width: 200.0,
                color: Colors.red,
              ),
              Container(
                width: 200.0,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Container(
          height: 350.0,
          color: Colors.red,
        ),
        Container(
          height: 350.0,
          color: Colors.blue,
        ),
        Container(
          height: 350.0,
          color: Colors.yellow,
        ),
        Container(
          height: 350.0,
          color: Colors.black,
        ),
        Container(
          height: 350.0,
          color: Colors.deepOrange,
        ),
      ],
    );
  }
}