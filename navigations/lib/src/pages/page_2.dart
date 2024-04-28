import 'package:flutter/material.dart';
import 'package:navigations/src/pages/page_1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              Navigator.pop(context);
            },
            child:  const Text(
              'Regresar'
            )
          ),
        ),
      ),
    );
  }
}