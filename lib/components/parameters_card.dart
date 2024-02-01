import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'round_button.dart';

import '../styles.dart';

class ParameterCard extends StatelessWidget {
  const ParameterCard({
    super.key,
    required this.nameOfParameter,
    required this.parameter,
    required this.reduceFunction,
    required this.addFunction,
  });

  final int parameter;
  final String nameOfParameter;
  final VoidCallback reduceFunction;
  final VoidCallback addFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nameOfParameter,
          style: labelTextStyle,
        ),
        Text(
          parameter.toString(),
          style: label2TextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
              onPressed: reduceFunction,
              childIcon: const Icon(
                FontAwesomeIcons.minus,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            RoundButton(
              onPressed: addFunction,
              childIcon: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
