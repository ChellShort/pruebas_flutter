import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function(int) currentIndex;
  const BottomNav({super.key, required this.currentIndex});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;  
            widget.currentIndex(i);
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        fixedColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold
          ),
        selectedLabelStyle: const TextStyle(
          letterSpacing: 10.0,
          fontWeight: FontWeight.bold
          ),
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie), 
            label: 'Anime'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports), 
            label: 'Juegos'
          )
          ],
        
      );
  }
}