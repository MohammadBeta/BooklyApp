import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/book_details_buttons.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/best_seller/book_rating.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/books/book_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .30),
            child:  CustomBookItem()),
        const SizedBox(
          height: 25,
        ),
        Text(
          "The Jungle Book",
          style: AppStyles.styleRegular30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 2,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
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
          child: BookDetailsButtons(),
        ),
      ],
    );
  }
}
