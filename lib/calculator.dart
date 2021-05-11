import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height,this.weight});

  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
return _bmi.toStringAsFixed(1);
  }

  String getTextResult() {
    if(_bmi >= 25) {
      return 'Overweight';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You have a highter than normal body weight. Try to exercise more.';
    } else if(_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}