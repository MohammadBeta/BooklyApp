import 'package:bookly_application/featuers/search/presentaion/widgets/serach_results_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utilis/constants/app_routes.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.bookDetailsView);
              },
              child: SearchResultListViewItem()),
        );
      },
    );
  }
}
