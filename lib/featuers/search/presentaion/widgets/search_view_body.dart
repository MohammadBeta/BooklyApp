import 'package:flutter/material.dart';

import '../../../../core/utilis/constants/styles.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'serach_results_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(
              onPressed: () {},
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Search Result",
              style: AppStyles.styleSemiBold18,
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
