import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Color> colorList = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (int i = 0; i < colorList.length; i++) Bars(colorList[i], i),
            ],
          ),
        ),
      ),
    );
  }
}

class Bars extends StatelessWidget {
  Color rang;
  int i;

  Bars(this.rang, this.i);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: rang,
        onPressed: () {
          AudioCache().play("note$i.wav");
        },
        child: Text(""),
      ),
    );
  }
}
