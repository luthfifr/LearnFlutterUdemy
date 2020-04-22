import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumberLeft = 1;
  int diceNumberRight = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //Random().nextInt(n) will generate random int between 0 until (n-1)
                  diceNumberLeft = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$diceNumberLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNumberRight = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$diceNumberRight.png')),
          ),
        ],
      ),
    );
  }
}
