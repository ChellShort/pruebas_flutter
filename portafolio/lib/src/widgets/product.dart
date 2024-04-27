

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  String selectedColor = '';
  String blueColor = 'https://media.stickerswiki.app/satanichia_otakuzdream/100181.512.webp';
  String orangeColor = 'https://i.redd.it/0x4qydqgqb691.png';

  @override
  void initState() {
    selectedColor = blueColor;
    super.initState();
  }

  void switchBlue() {
    setState(() {
      selectedColor = blueColor;
    });
  }

  void switchOrange() {
    setState(() {
      selectedColor = orangeColor;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            right: 20.0,
            left: 20.0
            ),
          child: Container(
            
            height: 420.0,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
              image: DecorationImage(image: NetworkImage(
                selectedColor,
                scale: 1.0,
                
                )
              ),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            right: 20.0,
            left: 20.0
            ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 15.0,
              children: [
                const Text('Colores:'),
                GestureDetector(
                  onTap: () {
                    switchBlue();
                  },
                  child: const CircleAvatar(
                    
                    radius: 30.0,
                    backgroundImage: NetworkImage('https://media.stickerswiki.app/satanichia_otakuzdream/100181.512.webp'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    switchOrange();
                  },
                  child: const CircleAvatar(
                    
                    radius: 30.0,
                    backgroundImage: NetworkImage('https://i.redd.it/0x4qydqgqb691.png'),
                  ),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            right: 20.0,
            left: 20.0
            ),
          child: Text('Laboris cupidatat aute aute laborum dolor id laboris magna cupidatat nulla dolor. Laboris cupidatat aute aute laborum dolor id laboris magna cupidatat nulla dolor. Laboris cupidatat aute aute laborum dolor id laboris magna cupidatat nulla dolor.'),
        ),  
      ],
    );

  }
}