import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/book_details_buttons.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/custom_book_item.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/best_seller/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .30),
            child: CustomBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            )),
        const SizedBox(
          height: 25,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: AppStyles.styleRegular30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 2,
        ),
         Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0]!,
            style: AppStyles.styleMedium18,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        const BookRating(),
        const SizedBox(
          height: 35,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BookDetailsButtons(price: "Free", previewLink: "",),
        ),
      ],
    );
  }
}
