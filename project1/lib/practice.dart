import 'package:flutter/material.dart';

class practice extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("PRACTICE SCREEN"),
              backgroundColor: Color.fromARGB(255, 177, 150, 69),
            ),
            bottomNavigationBar:
                BottomNavigationBar(backgroundColor: Colors.black, items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.star, color: Colors.yellow, size: 40),
                  label: 'STAR'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: 'SETTINGS'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME')
            ]),
            body: Column(children: [
              Container(
                height: 50,
                child: ListView.builder(
                    itemCount: 50,
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        height: 30,
                        width: 20,
                        color: Colors.red,
                      );
                    }),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                          )),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 20,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                        child: Stack(
                          children: [
                            Expanded(child: Container()),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  color: Colors.white,
                                )),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                // margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.teal[600],
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.teal[600],
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.yellowAccent,
                            border: Border.all(width: 2, color: Colors.white)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: double.infinity,
                        width: 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.yellowAccent,
                            border: Border.all(width: 2, color: Colors.white)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 160,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            border: Border.all(width: 2, color: Colors.white)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 160,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            border: Border.all(width: 2, color: Colors.white)),
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 40,
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.yellowAccent),
                                borderRadius: BorderRadius.circular(40))))
                  ],
                ),
              )
            ])));
  }
}
