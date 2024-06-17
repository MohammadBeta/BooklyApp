import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'best_seller/best_seller_list_view.dart';
import 'books/books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BooksListView(
              booksList: const [],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Best Seller",
                style: AppStyles.styleSemiBold18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
