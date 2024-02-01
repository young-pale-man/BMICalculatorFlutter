import 'package:flutter/material.dart';
import '../styles.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.cardIcon, required this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
        ),
        const SizedBox(
          height: 25,
        ),
        Text(cardText, style: labelTextStyle),
      ],
    );
  }
}
