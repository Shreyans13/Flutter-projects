import 'package:flutter/cupertino.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final Function onclick;
  final String title;
  CustomButton({@required this.onclick, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        child: Center(child: Text(title, style: kLargeButtonStyle)),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kContainerHeight,
      ),
    );
  }
}
