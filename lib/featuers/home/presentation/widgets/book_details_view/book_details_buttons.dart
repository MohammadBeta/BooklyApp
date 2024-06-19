import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/functions/launch_url.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons(
      {super.key, required this.price, required this.previewLink});
  final String price;
  final String? previewLink;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Text(
              price,
              style: AppStyles.styleBold15
                  .copyWith(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
        Expanded(
            child: CustomTextButton(
          onPressed: () async {
            await launshUrl(context, previewLink);
          },
          backgroundColor: const Color(0xffEF8262),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Text(
            previewLink == null ? "Preview not available" : "Free preview",
            style: AppStyles.styleMedium18,
          ),
        ))
      ],
    );
  }
}
