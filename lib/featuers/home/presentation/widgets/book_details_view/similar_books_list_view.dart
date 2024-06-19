import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:bookly_application/core/widgets/custom_error.dart';
import 'package:bookly_application/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_application/featuers/home/presentation/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: BlocConsumer<SimilarBooksCubit, SimilarBooksState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pushReplacement(AppRoutes.bookDetailsView, extra: state.booksList[index]);
                    },
                    child: CustomBookItem(
                      imageUrl: state
                          .booksList[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return const CustomErrorWidget();
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
