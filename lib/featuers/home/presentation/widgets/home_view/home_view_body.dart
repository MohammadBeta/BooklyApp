import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/manage/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly_application/featuers/home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
              listener: (context, state) {
                if (state is FeaturedBooksFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.errorMessage)));
                }
              },
              builder: (context, state) {
                if (state is FeaturedBooksSuccess) {
                  return BooksListView(
                    booksList: state.booksList,
                  );
                } else if (state is FeaturedBooksLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return const Center(
                    child: Text("Discover Programming Books"),
                  );
                }
              },
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
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: BlocConsumer<BestSellerCubit, BestSellerState>(
            listener: (context, state) {
              if (state is BestSellerFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              if (state is BestSellerSuccess) {
                return const BestSellerListView();
              } else if (state is BestSellerLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Center(
                  child: Text("Best Seller Programming Books"),
                );
              }
            },
          ),
        ),
      )
    ]);
  }
}
