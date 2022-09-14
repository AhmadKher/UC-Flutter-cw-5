import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 2;
  var num3 = 3;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    setState(() {});
  }

  void test() {
    var res = "";

    if (num1 > num3) {
      res = "one win";
    } else if (num2 > num1) {
      res = "2 win";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Rock Paper Scissors"),
        ),
              body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff6DC0CA),
                  Color(0xff2E0E62),
                ],
              ),
            ),
          ),

        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(60, 20, 20, 20),
                            child: Image.asset(
                              "assets/i_$num1.png",
                              width: 120,
                              height: 120,
                            )),
                        Container(
                            padding: EdgeInsets.all(50),
                            child: Image.asset(
                              "assets/i_$num2.png",
                              width: 120,
                              height: 120,
                            )),
                        // Container(
                        //     padding: EdgeInsets.all(10),
                        //     child: Image.asset(
                        //       "assets/i_$num3.png",
                        //       width: 120,
                        //       height: 120,
                        //     )),
                        Container(
                          height: 80,
                        ),
                        // Column(
                        //   children: [
                        //     Container(
                        //         width: 100,
                        //         height: 50,
                        //         child: ElevatedButton(
                        //           onPressed: () {
                        //             play();
                        //           },
                        //           style: ElevatedButton.styleFrom(
                        //             backgroundColor: Colors.amber,
                        //           ),
                        //           child: Text("Play"),
                        //         )),
                        //   ],
                        // ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        play();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: Text("Play"),
                    )),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
