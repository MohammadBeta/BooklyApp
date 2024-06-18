import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller/best_seller_list_view.dart';
import 'books/books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(child: BooksListView()),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 40,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Best Seller",
            style: AppStyles.styleSemiBold18,
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      BestSellerListView()
    ]);
  }
}
