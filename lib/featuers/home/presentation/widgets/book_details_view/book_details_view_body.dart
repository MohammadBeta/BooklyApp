import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/book_details_section.dart';
import 'package:flutter/material.dart';

import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0).copyWith(top: 20),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                BookDetailSection(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: SimilarBooksSection(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
