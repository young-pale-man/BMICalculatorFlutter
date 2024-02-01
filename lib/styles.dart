import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kDefaultCardColor = Color.fromARGB(255, 48, 61, 126);
const Color kPressedCardColor = Color.fromARGB(255, 87, 103, 182);
const Color kBottomContainerColor = Color.fromARGB(255, 255, 191, 0);
const kBottomContainerHeight = 80.0;

final TextStyle labelTextStyle = GoogleFonts.lato(
  textStyle: const TextStyle(
    letterSpacing: .5,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  ),
);

final TextStyle label2TextStyle = GoogleFonts.lato(
  textStyle: const TextStyle(
    letterSpacing: .5,
    fontSize: 50,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  ),
);

final TextStyle label3TextStyle = GoogleFonts.lato(
  textStyle: const TextStyle(
    letterSpacing: .5,
    fontSize: 40,
    fontWeight: FontWeight.w600,
  ),
);

final TextStyle label4TextStyle = GoogleFonts.lato(
  textStyle: const TextStyle(
      letterSpacing: .5,
      fontSize: 80,
      fontWeight: FontWeight.w900,
      color: Colors.white70),
);
