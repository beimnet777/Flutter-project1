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
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.all(15),
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Strawbarry Pavlova",
                            style:
                                TextStyle(fontSize: 30, color: Colors.blueGrey),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "It is one of our customers favorite recipie using diffrnet rare ingrdient .the price is reasonable compare to the effort spent on the product",
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star)
                                ],
                              ),
                              Text("170 review")
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.ac_unit_sharp),
                                    Text("Prep"),
                                    Text("25 min")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.punch_clock),
                                    Text("Cook"),
                                    Text("25 min")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.cookie),
                                    Text("Feeds"),
                                    Text("25 min")
                                  ],
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(
                              "photos/stephanie-nakagawa-ADSKIn0ScDg-unsplash.jpg"),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
