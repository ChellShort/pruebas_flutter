// ignore: file_names
import 'package:flutter/material.dart';
import 'package:portafolio/src/widgets/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter =0;  //Esta veriable esta antes del override porque es una variable que cambia de estado
  
  @override 
  Widget build(BuildContext context) {

    String title = 'Producto';
    // ignore: non_constant_identifier_names
    bool CTitle = true;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            
          ),
        ),
        centerTitle: CTitle,
        actions: [
          CircleAvatar(
            maxRadius: 20.0,
            minRadius: 17.0,
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            child: Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 19.0
              ),
            ),
          )
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: () {
            setState(() {
            counter ++;
          });
        },
      ),
      body: const Product(),
    
      
    );
  }
}