import 'package:flutter/material.dart';

void main(){
  runApp(const CustomRow());
}

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              
              height: 50.0,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              
              height: 50.0,
              color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}