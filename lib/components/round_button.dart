import 'package:flutter/material.dart';
import '../styles.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.childIcon,
  });

  final VoidCallback onPressed;
  final Widget childIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      fillColor: kBottomContainerColor,
      elevation: 10.0,
      hoverElevation: 10.0,
      constraints: const BoxConstraints(minWidth: 60.0, minHeight: 60.0),
      child: childIcon,
    );
  }
}
