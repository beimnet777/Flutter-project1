import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class new3 extends StatelessWidget {
  final colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
  ];
  final text1 = [
    "the beautiful mountains",
    "the great beach shore",
    "island of joy",
    "heaven on earth"
  ];
  final text2 = ["Italy", "Grecce", "Portugal", "Malaysia"];
  final images = [
    "photos/OIP (1).jpg",
    "photos/oip3.jpg",
    "photos/oip2.jpg",
    "photos/oip3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text("telegram"),
              ),
            ),
            drawer: Drawer(
              child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        height: 210,
                        width: 400,
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("photos/26975.jpg"),
                                radius: 40,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "text one",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "text one",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Icon(Icons.phone),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "text one",
                              style: TextStyle(fontSize: 15),
                            )
                          ]),
                          Row(children: [
                            Icon(Icons.circle),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "text one",
                              style: TextStyle(fontSize: 15),
                            ),
                          ]),
                          Row(children: [
                            Icon(Icons.circle_notifications),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "text one",
                              style: TextStyle(fontSize: 15),
                            )
                          ])
                        ],
                      )
                    ],
                  )),
            ),
            //must be more than two items in the bottom nav bar
            bottomNavigationBar: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home3")
            ]),
            body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(images[index % 4]),
                    fit: BoxFit.cover,
                  )),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          color: Color.fromRGBO(0, 0, 0, .4),
                          height: 90,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    text2[index % 4],
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  Text(
                                    text1[index % 4],
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                              Icon(Icons.star_border, color: Colors.white)
                            ],
                          )),
                    )
                  ]),
                );
              },
            )));
  }
}
