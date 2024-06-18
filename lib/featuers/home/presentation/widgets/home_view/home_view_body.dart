import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller/best_seller_list_view.dart';
import 'books/books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
          listener: (context, state) {
            if (state is FeaturedBooksFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.errorMessage)));
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
      ),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 40,
        ),
      ),
      const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Best Seller",
            style: AppStyles.styleSemiBold18,
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      const BestSellerListView()
    ]);
  }
}
