import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color c;
  final cardChild;
  final onPress;
  CustomCard({@required this.c, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration:
            BoxDecoration(color: c, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
