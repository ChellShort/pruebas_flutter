import 'package:flutter/material.dart';
import 'package:navigations/src/pages/details_page.dart';
import 'package:navigations/src/utils/my_List.dart';

class SportsList extends StatelessWidget {
  const SportsList({super.key});

  @override
  Widget build(BuildContext context) {
    
    var boxList = BoxList().boxList;
    
    return ListView.builder(
        itemCount: boxList.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              left: 10.0,
              right: 10.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      myImage: boxList[i],
                    ),
                  ),
                );
              },
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(
                      boxList[i]['image'] ?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      );
  }
}