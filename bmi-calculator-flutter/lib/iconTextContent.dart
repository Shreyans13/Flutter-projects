import 'package:flutter/material.dart';

const textStyle = TextStyle(fontSize: 18.0, color: Color(0xff8d8e98));

class IconTextComponent extends StatelessWidget {
  final IconData icon;
  final text;
  final Color c;

  IconTextComponent({@required this.icon, @required this.text, this.c});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: c,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
