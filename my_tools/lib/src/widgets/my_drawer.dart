import 'package:flutter/material.dart';
import 'package:my_tools/src/utils/drawer_items.dart';
import 'package:my_tools/src/widgets/my_drawerHeader.dart';

class MyDrawer extends StatelessWidget {
  final void Function(int) cIndex;
  const MyDrawer({super.key, required this.cIndex});

  @override
  Widget build(BuildContext context) {

    List<MyItems> itemsList = DrawerItems().items;

    return Drawer(
        width: 300.0,
        backgroundColor: Colors.white,
        shape: const Border(
          right: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: ListView(
          children: [
            const CustomDrawerHeader(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: itemsList.length,
              itemBuilder: (context, i) {
                return ListTile(
                  horizontalTitleGap: 10.0,
                  minLeadingWidth: 20.0,
                  dense: true,
                  title: Text(itemsList[i].title),
                  leading: Icon(
                    itemsList[i].icon,
                    size: 35.0,
                    ),
                  subtitle: Text(itemsList[i].subtitle),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20.0,
                  ),
                  onTap: (){
                    cIndex(i);
                    Navigator.pop(context);
                  },
                );
              }
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
  Widget route;

  MyItems({required this.title, required this.icon, required this.subtitle, required this.route});
}