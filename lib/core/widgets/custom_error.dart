import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key, required this.errorText,
  });
final String? errorText;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: errorText != null ? Text(errorText!) : const Icon(
        Icons.error,
        color: Colors.red,
      ),
    );
  }
}
