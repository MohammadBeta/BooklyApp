import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/book_model/book_model.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.booksList});
final List<BookModel> booksList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: booksList.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.bookDetailsView);
              },
              child:  BestSellerListViewItem(bookModel: booksList[index],)),
        );
      },
    );
  }
}
