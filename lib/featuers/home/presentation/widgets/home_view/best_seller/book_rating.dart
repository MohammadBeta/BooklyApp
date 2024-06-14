import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utilis/constants/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 13,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "4.8",
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "(2390)",
          style: AppStyles.styleRegular14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
