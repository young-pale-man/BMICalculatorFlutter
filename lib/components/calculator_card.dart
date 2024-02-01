import 'package:flutter/material.dart';

class CalculatorCard extends StatelessWidget {
  const CalculatorCard({
    super.key,
    required this.cardColor,
    required this.cardChild,
    required this.cardFunction,
  });

  final Color cardColor;
  final Widget cardChild;
  final VoidCallback cardFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardFunction,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}
