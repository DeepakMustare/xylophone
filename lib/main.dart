import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();
  playerAudio(int soundnumber) async {
    await player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color color = Colors.red, int soundnumber = 0}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playerAudio(soundnumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, soundnumber: 1),
                buildkey(color: Colors.orange, soundnumber: 2),
                buildkey(color: Colors.yellow, soundnumber: 3),
                buildkey(color: Colors.green, soundnumber: 4),
                buildkey(color: Colors.teal, soundnumber: 5),
                buildkey(color: Colors.blue, soundnumber: 6),
                buildkey(color: Colors.purple, soundnumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
