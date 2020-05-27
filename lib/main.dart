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
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.lightBlue,
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
  int ballNumber = 1;

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
                  ballNumber = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
