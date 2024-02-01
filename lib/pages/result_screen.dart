import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/calculator_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/styles.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.calculatedResult,
    required this.resultColor,
    required this.calculatedBMI,
    required this.calculatedAdvice,
  });

  final String calculatedResult;
  final Color resultColor;
  final String calculatedBMI;
  final String calculatedAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your results:',
            style: label2TextStyle,
          ),
          Expanded(
            flex: 5,
            child: CalculatorCard(
              cardColor: kDefaultCardColor,
              cardChild: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        calculatedResult,
                        style: label3TextStyle.copyWith(
                          color: resultColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    calculatedBMI,
                    style: label4TextStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    calculatedAdvice,
                    style: labelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              cardFunction: () {},
            ),
          ),
          BottomButton(
            onTapFunction: () {
              Navigator.pop(context);
            },
            buttonTitle: "Re-Calculate",
          ),
        ],
      ),
    );
  }
}
