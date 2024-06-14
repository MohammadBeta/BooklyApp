import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:flutter/material.dart';

import 'custom_serach_button.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: AppStyles.styleMedium16,
            suffixIcon: SearchIconButton(
              onPressed: onPressed,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(16)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(16))));
  }
}
