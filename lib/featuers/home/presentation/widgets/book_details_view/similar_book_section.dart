import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "You can also like",
          style: AppStyles.styleSemiBold14,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .16,
          child: const SimilarBooksListView(),
        ),
      ],
    );
  }
}
