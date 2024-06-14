import 'package:bookly_application/featuers/home/presentation/widgets/home_view/best_seller/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilis/constants/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Harry Potter and the Goblet of Fire",
                maxLines: 2,
                style: AppStyles.styleRegular20,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "J.K. Rowling",
                style: AppStyles.styleMedium14.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19.99 €",
                    style: AppStyles.styleBold15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: BookRating(),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
