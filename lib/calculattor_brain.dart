import 'dart:math';

class Calculator_brain {
  final int? height;
  final int? weight;
  Calculator_brain({this.height, this.weight});

  double? _bmi;

  String calculate_BMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterPretation() {
    if (_bmi! >= 25) {
      return 'You have heiger than normal body weight. Try Exercise more';
    } else if (_bmi! > 18.5) {
      return 'You have Normal weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more! ';
    }
  }
}
