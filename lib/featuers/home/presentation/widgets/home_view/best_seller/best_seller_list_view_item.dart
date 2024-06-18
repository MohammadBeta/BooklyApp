import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/best_seller/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilis/constants/styles.dart';
import '../../custom_book_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
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
              Text(
                bookModel.volumeInfo.title!,
                maxLines: 2,
                style: AppStyles.styleRegular20,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                bookModel.volumeInfo.authors![0],
                style: AppStyles.styleMedium14.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bookModel.saleInfo!.retailPrice != null
                        ? "${bookModel.saleInfo!.retailPrice!.amount} ${bookModel.saleInfo!.retailPrice!.currencyCode}"
                        : "Free",
                    style: AppStyles.styleBold15,
                  ),
                  const Padding(
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
