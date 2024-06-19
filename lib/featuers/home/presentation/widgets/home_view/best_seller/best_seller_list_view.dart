import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:bookly_application/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_error.dart';
import '../../../manage/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BestSellerCubit, BestSellerState>(
        listener: (context, state) {
      if (state is BestSellerFailure) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.errorMessage)));
      }
    }, builder: (context, state) {
      if (state is BestSellerSuccess) {
        return SliverList.builder(
          
            itemCount: state.booksList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.bookDetailsView, extra: state.booksList[index]);
                    },
                    child: BestSellerListViewItem(
                      bookModel: state.booksList[index],
                    )),
              );
            });
      } else if (state is BestSellerFailure) {
        return  SliverToBoxAdapter(child: CustomErrorWidget(errorText: state.errorMessage,));
      } else {
        return const SliverToBoxAdapter(child: CustomLoadingIndicator());
      }
    });
  }
}
