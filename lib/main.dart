import 'package:bookly_application/core/utilis/constants/app_colors.dart';
import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:bookly_application/featuers/home/presentation/views/home_view.dart';
import 'package:bookly_application/featuers/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.scaffoldBackGround,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
