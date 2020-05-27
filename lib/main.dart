import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(String fileName) => player.play('note$fileName.wav');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    child: null,
                    onPressed: () {
                      playSound('1');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    child: null,
                    onPressed: () {
                      playSound('2');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    child: null,
                    onPressed: () {
                      playSound('3');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.lightGreen,
                    child: null,
                    onPressed: () {
                      playSound('4');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    child: null,
                    onPressed: () {
                      playSound('5');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    child: null,
                    onPressed: () {
                      playSound('6');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    child: null,
                    onPressed: () {
                      playSound('7');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}