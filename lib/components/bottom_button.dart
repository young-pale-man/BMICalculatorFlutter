import 'package:flutter/material.dart';
import '../styles.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onTapFunction, required this.buttonTitle});

  final VoidCallback onTapFunction;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: label2TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
