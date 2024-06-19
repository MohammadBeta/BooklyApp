import 'package:bookly_application/featuers/search/presentaion/manage/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilis/constants/styles.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'serach_results_list_view.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController searchCtrl;
  @override
  void initState() {
    super.initState();
    searchCtrl = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(
              searchCtrl: searchCtrl,
              onPressed: () {
                BlocProvider.of<SearchBooksCubit>(context)
                    .searchBooks(searchText: searchCtrl.text);
              },
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
