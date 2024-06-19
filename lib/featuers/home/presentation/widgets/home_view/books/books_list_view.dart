import 'package:bookly_application/core/widgets/custom_error.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manage/featured_books_cubit/featured_books_cubit.dart';
import 'books_list_view_shimmer.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
        listener: (context, state) {
          if (state is FeaturedBooksFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookItem(
                      imageUrl: state
                          .booksList[index].volumeInfo.imageLinks?.thumbnail),
                );
              },
            );
          } else if (state is FeaturedBooksFailure) {
            return  CustomErrorWidget(errorText: state.errorMessage,);
          } else {
            return const BooksListViewShimmer();
          }
        },
      ),
    );
  }
}
