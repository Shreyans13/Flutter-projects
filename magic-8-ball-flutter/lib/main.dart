import 'dart:math';

import 'package:flutter/material.dart';

//
// Color(0xFFA997DF),
// appBar: AppBar(
// backgroundColor: Color(0xFF4F517D),
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFFD36135),
          appBar: AppBar(
            backgroundColor: Color(0xFFA24936),
            title: Text("Ask me Anything"),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  // const MagicBall({Key? key}) : super(key: key);
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;

  void randomBall() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => randomBall(),
        child: Image.asset("images/ball$ball.png"),
      ),
    );
  }
}
