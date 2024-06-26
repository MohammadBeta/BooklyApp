import 'package:bookly_application/featuers/home/presentation/widgets/home_view/home_view_body.dart';
import 'package:flutter/material.dart';

import '../widgets/home_view/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeViewBody(),
    );
  }
}
