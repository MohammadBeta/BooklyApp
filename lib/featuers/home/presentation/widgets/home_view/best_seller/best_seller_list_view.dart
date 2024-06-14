import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.bookDetailsView);
              },
              child: const BestSellerListViewItem()),
        );
      },
    );
  }
}
