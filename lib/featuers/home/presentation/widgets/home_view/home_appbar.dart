import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/constants/app_colors.dart';
import '../../../../../core/utilis/constants/app_images.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppImages.logo),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.searchView);
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      backgroundColor: AppColors.scaffoldBackGround,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
