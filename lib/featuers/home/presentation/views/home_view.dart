import 'package:bookly_application/featuers/home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_view/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FeaturedBooksCubit>(context).getFeaturedBooks();
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeViewBody(),
    );
  }
}
