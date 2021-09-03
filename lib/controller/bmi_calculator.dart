import 'dart:math';

class BMICalculator {
  final int weight;
  final int height;
  num _bmi = 0;

  BMICalculator({required this.weight, required this.height});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Ideal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Try to exercise more, the ideal BMI is between 18.5 and 25';
    } else if (_bmi >= 18.5) {
      return 'You have a good body weight. Good job!';
    } else {
      return 'You should gain a bit more weight, the ideal BMI is between 18.5 and 25';
    }
  }
}
