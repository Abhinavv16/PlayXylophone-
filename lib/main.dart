import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playaudio(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildkey({Color color , int soundNumber}){
    return Expanded(
      child: Card(
        color: color,
        child: TextButton(
          onPressed: () {
            playaudio(soundNumber);
          },
          child: Text('Click on me to Play Note $soundNumber',
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildkey(color : Colors.red, soundNumber : 1),
              buildkey(color : Colors.orange, soundNumber : 2),
              buildkey(color : Colors.yellowAccent, soundNumber : 3),
              buildkey(color : Colors.green, soundNumber : 4),
              buildkey(color : Colors.teal, soundNumber : 5),
              buildkey(color : Colors.lightBlue, soundNumber : 6),
              buildkey(color : Colors.purple, soundNumber : 7),
            ],
          ),
        ),
      ),
    );
  }
}
