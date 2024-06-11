import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:flutter/material.dart';

import 'books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BooksListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMed,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: BestSellerListView())
        ],
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Harry Potter \nand the Goblet of Fire",
                maxLines: 2,
                style: Styles.titleLarge,
              ),
              Text(
                "J.K. Rowling",
                style: Styles.titleSmall.copyWith(color: Colors.grey),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
