import 'package:bmi_calculator/customButton.dart';
import 'package:bmi_calculator/customCard.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'customCard.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: kTittleStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: CustomCard(
                c: KActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          CustomButton(
            title: "Recalculate",
            onclick: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
