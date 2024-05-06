import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key,});

  @override
  Widget build(BuildContext context) {

    return const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30.0,
            child: Icon(
              Icons.person,
              size: 25.0,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Ricardo Emmanuel Sánchez Martínez',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyItems {
  String title;
  IconData icon;
  String subtitle;

  MyItems({required this.title, required this.icon, required this.subtitle});
}
