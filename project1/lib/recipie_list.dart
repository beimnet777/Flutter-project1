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
            CircleAvatar(
              child: Image(
                image: AssetImage(recipie.url!),
                height: 300,
                width: double.infinity,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontSize: 30.0, color: Colors.amber[600]),
                ),
                SizedBox(height: 30.0),
                Text('BEIMNET BEKELE',
                    style: TextStyle(
                      color: Colors.green[300],
                      fontSize: 60.0,
                    )),
                Text(
                  'Addres',
                  style: TextStyle(fontSize: 30.0, color: Colors.amber[600]),
                ),
                SizedBox(height: 30.0),
                Text(
                  'ADDIS ABABA',
                  style: TextStyle(
                    color: Colors.green[300],
                    fontSize: 60.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
