import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

List<Color> colors_list = [Colors.red, Colors.orange, Colors.yellow, Colors.lightGreen, Colors.green, Colors.blue, Colors.purple];

void playsound(int soundnumber) {
  final player = AudioCache();
  player.play('note$soundnumber.wav');
}

Widget buildkey(int soundnumber, var color) {
  return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
        child: Container(
          color: color,
        ),
        onPressed: () {
          playsound(soundnumber);
        },
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        for (int i = 1; i<=7; i++) buildkey(i, colors_list[i-1])
      ],
    );
  }
}
