import 'package:flutter/material.dart';

class nav extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("The first screen"),
              backgroundColor: Color.fromARGB(255, 177, 150, 69),
            ),
            body:ElevatedButton(
               child: const Text("go to ->"),
              onPressed:(){
                 Navigator.pop(context);})
        )); 
                
  }
}