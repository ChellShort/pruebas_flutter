import 'package:flutter/material.dart';
import 'package:my_tools/src/pages/local_image.dart';
import 'package:my_tools/src/pages/my_gridview.dart';
import 'package:my_tools/src/pages/my_pageview.dart';
import 'package:my_tools/src/utils/drawer_items.dart';
import 'package:my_tools/src/widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

  final List<MyItems> myBody = DrawerItems().items;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(myBody[index].title, style: const TextStyle(color: Colors.white),),
      ),
      drawer: MyDrawer(
        cIndex: (i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: myBody[index].route,
    );
  }
}
