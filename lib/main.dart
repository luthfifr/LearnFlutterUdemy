import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
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
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                player.play('note1.wav');
              },
              child: Image.asset('images/ball1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
