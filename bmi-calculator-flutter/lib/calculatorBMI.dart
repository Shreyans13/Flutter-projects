import 'dart:math';

class CalculatorBMI {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBMI({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return "OverWeight";
    else if (_bmi > 18.5)
      return "Normal";
    else
      return "UnderWeight";
  }

  String getInterpretation() {
    if (_bmi > 25)
      return "You have a higher than Normal Body Weight. Try to exercise anymore.";
    else if (_bmi > 18.5)
      return "You have an normal body weight. Good Job!!";
    else
      return "You have lower than normal body weight. You can eat a bit more.";
  }
}
