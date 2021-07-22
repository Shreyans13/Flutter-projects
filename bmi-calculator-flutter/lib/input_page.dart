import 'package:bmi_calculator/calculatorBMI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculatorBMI.dart';
import 'constants.dart';
import 'customButton.dart';
import 'customCard.dart';
import 'iconTextContent.dart';
import 'result.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  kGenderType selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // CrossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    onPress: () => setState(() {
                      selectedGender = kGenderType.male;
                    }),
                    c: selectedGender == kGenderType.male
                        ? KActiveColor
                        : KInActiveColor,
                    cardChild: IconTextComponent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                      c: selectedGender == kGenderType.male
                          ? kBottomContainerColor
                          : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                    child: CustomCard(
                  onPress: () => setState(() {
                    selectedGender = kGenderType.female;
                  }),
                  c: selectedGender == kGenderType.female
                      ? KActiveColor
                      : KInActiveColor,
                  cardChild: IconTextComponent(
                    icon: FontAwesomeIcons.venus,
                    text: "FEMALE",
                    c: selectedGender == kGenderType.female
                        ? kBottomContainerColor
                        : Colors.white,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: CustomCard(
            c: KActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: kTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberStyle,
                    ),
                    Text(
                      "cm",
                      style: kTextStyle,
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120,
                  max: 220,
                  onChanged: (double newValue) =>
                      setState(() => height = newValue.round()),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomCard(
                  c: KActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: kTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(() => weight--),
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(() => weight++),
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CustomCard(
                  c: KActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: kTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(() => age--),
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(() => age++),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          CustomButton(
            title: "Calculate",
            onclick: () {
              CalculatorBMI ob =
                  new CalculatorBMI(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: ob.calculateBMI(),
                            interpretation: ob.getInterpretation(),
                            resultText: ob.getResult(),
                          )));
            },
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f4e),
      child: Icon(icon),
    );
  }
}
