import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Text(
              "19.99€",
              style: AppStyles.styleBold15
                  .copyWith(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
        const Expanded(
            child: CustomTextButton(
          backgroundColor: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Text(
            "Free preview",
            style: AppStyles.styleMedium18,
          ),
        ))
      ],
    );
  }
}
