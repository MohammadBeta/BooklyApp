import 'package:bookly_application/core/widgets/custom_error.dart';
import 'package:bookly_application/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_application/featuers/search/presentaion/manage/search_book_cubit/search_book_cubit.dart';
import 'package:bookly_application/featuers/search/presentaion/widgets/serach_results_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utilis/constants/app_routes.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            itemCount: state.booksList.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.bookDetailsView,
                          extra: state.booksList[index]);
                    },
                    child: SearchResultListViewItem(
                      bookModel: state.booksList[index],
                    )),
              );
            },
          );
        } else if (state is SearchBooksLoading) {
          return const CustomLoadingIndicator();
        } else if (state is SearchBooksNoSearchData) {
          return const Center(
            child: Text("No Books Match"),
          );
        } else if (state is SearchBooksFailuer) {
          return CustomErrorWidget(
            errorText: state.errorMessage,
          );
        } else {
          return const Center(
            child: Text("Search Free Books Now"),
          );
        }
      },
    );
  }
}
