import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigations/src/widgets/bottom_nav.dart';
import 'package:navigations/src/widgets/games_list.dart';
import 'package:navigations/src/widgets/sports_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0; //se necesita para poder dibujar los items
  @override
  Widget build(BuildContext context) {
    
    List<Widget> Body = const [
      SportsList(),
      GamesList()
    ];

    return Scaffold(
      body: Body[index],
      bottomNavigationBar: BottomNav(currentIndex: (i){
        setState(() {
          index = i;
        });
      },)
    );
  }
}
