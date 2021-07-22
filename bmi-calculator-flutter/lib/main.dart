import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
              inactiveTrackColor: Color(0xff8d8e98),
              activeTrackColor: Colors.white,
              thumbColor: Color(0xffeb1555),
              overlayColor: Color(0x29eb1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
          primaryColor: Color(0xff0a0e21),
          scaffoldBackgroundColor: Color(0xff0a0e21)),
      home: InputPage(),
    );
  }
}
