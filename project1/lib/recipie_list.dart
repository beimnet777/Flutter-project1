import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Recipie.dart';

class RecipieDetail extends StatelessWidget {
  var recipie;
  RecipieDetail(recipie) {
    this.recipie = recipie;
  }
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("picture detail"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Image(
              image: AssetImage(recipie.url!),
              height: 300,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
