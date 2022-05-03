import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/new3.dart';



class stack_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack implemntation"),
          backgroundColor: Colors.green[200],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 200,
              width: 200,
              color: Color.fromARGB(25, 144, 144, 145),
              padding: EdgeInsets.all(30),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image(
                      image: AssetImage("photos/BEIMNET-logos.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      right: 20,
                      bottom: 20,
                      child: Container(
                        child: Text("Beimnet"),
                        color: Color.fromRGBO(0, 0, 0, .2),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 400,
              width: 400,
              child: Stack(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage("photos/26975.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              color: Color.fromRGBO(0, 0, 0, .4),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Design",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              )))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_left, size: 40)),
                  Positioned(
                      top: 0,
                      right: 45,
                      child: Row(
                        children: [
                          Icon(Icons.border_color),
                          SizedBox(width: 10),
                          Icon(Icons.more_vert)
                        ],
                      ))
                ],
              ),
            )
          ]),
        ));
  }
}
