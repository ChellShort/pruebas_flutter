import 'package:flutter/material.dart';


class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        Image(
          image: NetworkImage('https://cdn.pixabay.com/photo/2018/01/01/01/56/yoga-3053488__340.jpg'),
          fit: BoxFit.fitHeight,
          ),
          Image(
          image: NetworkImage('https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948__340.jpg'),
          fit: BoxFit.fitHeight,
          ),
      ],
    );
  }
}