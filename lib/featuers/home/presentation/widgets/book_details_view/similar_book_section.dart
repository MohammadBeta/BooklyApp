import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: AppStyles.styleSemiBold14,
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
