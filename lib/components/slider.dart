import 'package:flutter/material.dart';
import '../styles.dart';

int customerHeight = 170;

class HeightSLider extends StatefulWidget {
  const HeightSLider({
    super.key,
  });

  int returnHeight() => customerHeight;

  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSLider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Height',
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              customerHeight.toString(),
              style: label2TextStyle,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTickMarkColor: Colors.grey,
            thumbColor: Colors.amber,
            overlayColor: const Color.fromARGB(155, 255, 193, 7),
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 30,
            ),
          ),
          child: Slider(
            value: customerHeight.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: (double newValue) {
              setState(
                () {
                  customerHeight = newValue.round();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
