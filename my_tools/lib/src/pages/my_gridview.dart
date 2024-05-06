import 'package:flutter/material.dart';
import 'package:my_tools/src/utils/images_list.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> gridList = ImagesList().imagesList;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0
        ), 
      itemCount: gridList.length,
      itemBuilder: (context, i) {
        return Image(
          image: NetworkImage(gridList[i]),
          fit: BoxFit.cover,
          );
      } 
      );
  }
}