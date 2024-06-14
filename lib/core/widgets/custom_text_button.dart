
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.child,
      this.backgroundColor = Colors.white,
      this.borderRadius = BorderRadius.zero});
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        onPressed: () {},
        child: child);
  }
}
