import 'package:flutter/material.dart';



class DetailsPage extends StatelessWidget {
  final Map<String, String> myImage;
  
  const DetailsPage({Key? key, required this.myImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myImage['name'] ?? ''),
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  myImage['image'] ?? '',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
