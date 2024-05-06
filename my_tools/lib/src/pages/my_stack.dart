import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 260.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight / 1.1,
              child: Container(
                height: 200.0,
                width: 280.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Center(
                  child: Text(
                    'Fallout 2\n\nInterplay\n\n1998',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
            ),
            const Positioned(
                top: 10.0,
                left: 0.0,
                child: Image(
                    height: 225.0,
                    width: 225.0,
                    image: AssetImage('assets/fallout2.png'))),
            
          ],
        ),
      ),
    );
  }
}
