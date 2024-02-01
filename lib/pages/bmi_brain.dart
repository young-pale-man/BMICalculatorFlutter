import 'dart:math';

import 'package:flutter/material.dart';

class BmiBrain {
  BmiBrain({
    required this.customerHeight,
    required this.customerWeight,
  });

  final int customerHeight;
  final int customerWeight;

  late double bmiResult = customerWeight / pow(customerHeight / 100, 2);

  double calculateBMI() {
    return bmiResult;
  }

  String resultParameter() {
    if (bmiResult <= 18.4) {
      return 'Underweight';
    } else if (bmiResult > 18.4 && bmiResult <= 24.9) {
      return "Normal";
    } else if (bmiResult > 24.9 && bmiResult <= 39.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  Color resultColor() {
    if (bmiResult <= 18.4) {
      return const Color.fromARGB(255, 20, 177, 189);
    } else if (bmiResult > 18.4 && bmiResult <= 24.9) {
      return const Color.fromARGB(255, 48, 189, 20);
    } else if (bmiResult > 24.9 && bmiResult <= 39.9) {
      return const Color.fromARGB(255, 243, 219, 0);
    } else {
      return const Color.fromARGB(255, 189, 20, 20);
    }
  }

  String resultAdvice() {
    if (bmiResult <= 18.4) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (bmiResult > 18.4 && bmiResult <= 24.9) {
      return "You have a normal body weight. Good job!";
    } else if (bmiResult > 24.9 && bmiResult <= 39.9) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else {
      return "You have to visit a doctor";
    }
  }
}
