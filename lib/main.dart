import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(String fileName) => player.play('note$fileName.wav');

  Expanded buildKey({ Widget title, Color color, String noteNumber}) {
    return Expanded(
                  child: FlatButton(
                    color: color,
                    child: title,
                    onPressed: () {
                      playSound(noteNumber);
                    },
                  ),
                );
  }

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
                buildKey(color: Colors.red, noteNumber: '1'),
                buildKey(color: Colors.orange, noteNumber: '2'),
                buildKey(color: Colors.yellow, noteNumber: '3'),
                buildKey(color: Colors.lightGreen, noteNumber: '4'),
                buildKey(color: Colors.green, noteNumber: '5'),
                buildKey(color: Colors.blue, noteNumber: '6'),
                buildKey(color: Colors.purple, noteNumber: '7'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}