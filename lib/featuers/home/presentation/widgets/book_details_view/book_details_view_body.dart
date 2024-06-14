import 'package:bookly_application/featuers/home/presentation/widgets/book_details_view/book_details_section.dart';
import 'package:flutter/material.dart';

import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0).copyWith(top: 20),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BookDetailSection(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
              ),
              child: SimilarBooksSection(),
            )
          ],
        ),
      ),
    );
  }
}
