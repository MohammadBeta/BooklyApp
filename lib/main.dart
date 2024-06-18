import 'package:bookly_application/core/utilis/constants/app_colors.dart';
import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:bookly_application/featuers/home/data/home_repos/home_repo_impl.dart';
import 'package:bookly_application/featuers/home/presentation/manage/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly_application/featuers/home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utilis/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(homeRepoImpl: GetIt.I.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              BestSellerCubit(homeRepoImpl: GetIt.I.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.scaffoldBackGround,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
