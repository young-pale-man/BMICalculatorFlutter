import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/parameters_card.dart';
import 'package:bmi_calculator/pages/bmi_brain.dart';
import 'package:bmi_calculator/pages/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/calculator_card.dart';
import '../components/gender_card.dart';
import '../styles.dart';
import '../components/slider.dart';

enum Gender {
  male,
  female,
  nonSelected,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.nonSelected;
  int customerWeight = 60;
  int customerAge = 20;
  int customerHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CalculatorCard(
                    cardFunction: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kPressedCardColor
                        : kDefaultCardColor,
                    cardChild: const GenderCard(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: CalculatorCard(
                    cardFunction: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    cardColor: selectedGender == Gender.female
                        ? kPressedCardColor
                        : kDefaultCardColor,
                    cardChild: const GenderCard(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CalculatorCard(
                    cardFunction: () {},
                    cardColor: kDefaultCardColor,
                    cardChild: const HeightSLider(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CalculatorCard(
                    cardFunction: () {},
                    cardColor: kDefaultCardColor,
                    cardChild: ParameterCard(
                        nameOfParameter: "Age",
                        parameter: customerAge,
                        reduceFunction: () {
                          if (customerAge >= 9) {
                            setState(
                              () {
                                customerAge--;
                              },
                            );
                          }
                        },
                        addFunction: () {
                          if (customerAge <= 99) {
                            setState(
                              () {
                                customerAge++;
                              },
                            );
                          }
                        }),
                  ),
                ),
                Expanded(
                  child: CalculatorCard(
                    cardFunction: () {},
                    cardColor: kDefaultCardColor,
                    cardChild: ParameterCard(
                      nameOfParameter: "Weight",
                      parameter: customerWeight,
                      reduceFunction: () {
                        if (customerWeight >= 10) {
                          setState(
                            () {
                              customerWeight--;
                            },
                          );
                        }
                      },
                      addFunction: () {
                        if (customerWeight <= 160) {
                          setState(
                            () {
                              customerWeight++;
                            },
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTapFunction: () {
              BmiBrain calc = BmiBrain(
                customerHeight: const HeightSLider().returnHeight(),
                customerWeight: customerWeight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    calculatedResult: calc.resultParameter(),
                    resultColor: calc.resultColor(),
                    calculatedBMI: calc.calculateBMI().toStringAsFixed(1),
                    calculatedAdvice: calc.resultAdvice(),
                  ),
                ),
              );
            },
            buttonTitle: "Count",
          )
        ],
      ),
    );
  }
}
