import 'package:flutter/material.dart';

import 'page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SafeArea(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const Page2())
              );
            },
            child:  const Text(
              'Ir a pagina 2'
            )
          ),
        ),
      ),
    );
  }
}