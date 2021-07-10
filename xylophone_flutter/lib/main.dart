import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  List<Color> colorList = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];
  void changeColor() {
    setState(() {
      colorList.shuffle();
    });
  }

  late ShakeDetector detector;

  @override
  void initState() {
    super.initState();
    detector = ShakeDetector.autoStart(onPhoneShake: () {
      changeColor();
    });
    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  void dispose() {
    super.dispose();
    detector.stopListening();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorList[0],
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
