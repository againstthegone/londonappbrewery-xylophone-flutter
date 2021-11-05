import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylophoneKey(1, Colors.red),
              XylophoneKey(2, Colors.orange),
              XylophoneKey(3, Colors.yellow),
              XylophoneKey(4, Colors.green),
              XylophoneKey(5, Colors.teal),
              XylophoneKey(6, Colors.blue),
              XylophoneKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneKey extends StatelessWidget {
  final int number;
  final Color color;
  final player = AudioCache();

  XylophoneKey(this.number, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
          padding:
              MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
        ),
        onPressed: playSound,
      ),
    );
  }

  void playSound() {
    player.play('note$number.wav');
  }
}
