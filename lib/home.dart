import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Center(
            child: Text(
              "Diceees",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            var diceNo = Random().nextInt(5) + 1;
            print(diceNo);
            setState(() {
              dice = diceNo;
            });
          },
          child: Center(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset("assets/images/dice${dice}.png")),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
