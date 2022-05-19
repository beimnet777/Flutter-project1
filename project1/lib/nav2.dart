import 'package:flutter/material.dart';
import 'package:project1/nav.dart';

class nav2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("The second screen"),
              backgroundColor: Colors.amber,
            ),
            body: ElevatedButton(
                child: const Text("go to ->"),
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => nav()));
                })));
  }
}
