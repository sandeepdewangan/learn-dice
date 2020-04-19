import 'dart:math';

import 'package:flutter/material.dart';
/*
1. Expanded Widget
----------------------------------------------
Expanded widget deals with the problem of screen sizes of different mobile
devices. We can use flex property to make changes in sizes.

  --> Expanded height wise in Column
  --> Expanded width wise in Row

2. Declarations
----------------------------------------------
All declarations will goes on the top of widget build method.

3. Disable Debug Banner
----------------------------------------------
In Material App (debugShowCheckedModeBanner: false)

 */

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.pinkAccent,
          body: DiceApp(),
        ),
      ),
    )
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNumber_d1 = 1;
  int diceNumber_d2 = 5;

  void getNextDiceNumber(){
    int nextNumber_d1 = Random().nextInt(6) + 1;
    int nextNumber_d2 = Random().nextInt(6) + 1;

    setState(() {
      diceNumber_d1 = nextNumber_d1;
      diceNumber_d2 = nextNumber_d2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$diceNumber_d1.png'),
              onPressed: (){
                getNextDiceNumber();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$diceNumber_d2.png'),
              onPressed: (){
                getNextDiceNumber();
              },
            ),
          ),
        ],
      ),
    );
  }
}
