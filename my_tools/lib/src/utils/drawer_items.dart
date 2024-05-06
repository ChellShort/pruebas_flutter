
import 'package:flutter/material.dart';
import 'package:my_tools/src/pages/local_image.dart';
import 'package:my_tools/src/pages/my_gridview.dart';
import 'package:my_tools/src/pages/my_pageview.dart';
import 'package:my_tools/src/pages/my_slider.dart';
import 'package:my_tools/src/pages/my_stack.dart';
import 'package:my_tools/src/pages/neon_page.dart';
import 'package:my_tools/src/widgets/my_drawer.dart';

class DrawerItems {
  final List<MyItems> items = [
      MyItems
      (
        title: 'Imagen Local', 
        icon: Icons.image, 
        subtitle: 'Abrir imagen Local',
        route: const LocalImage()
      ),
      MyItems
      (
        title: 'Page View', 
        icon: Icons.pages_outlined, 
        subtitle: 'Vista de pagina',
        route: const MyPageView()
      ),
      MyItems
      (
        title: 'GridView', 
        icon: Icons.grid_4x4, 
        subtitle: 'Vista por cuadros',
        route: const MyGridView()
      ),
      MyItems
      (
        title: 'Slider', 
        icon: Icons.circle, 
        subtitle: 'Vista con slider',
        route: const MySlider()
      ),
      MyItems(
        title: 'Stack', 
        icon: Icons.stacked_bar_chart, 
        subtitle: 'Vista con stack',
        route: const MyStack()
      ),
      MyItems(
        title: 'Neon', 
        icon: Icons.light, 
        subtitle: 'Texto retro',
        route: const MyNeon()
      )
    ];
}