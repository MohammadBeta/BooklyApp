import 'package:bookly_application/core/utilis/constants/app_images.dart';
import 'package:bookly_application/core/utilis/constants/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'text_sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    goToHomeView();
  }



  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AppImages.logo,
          height: 45,
        ),
        const SizedBox(
          height: 16,
        ),
        TextSlidingAnimation(
          slidingAnimation: _slidingAnimation,
        )
      ],
    );
  }
    void goToHomeView() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).pushReplacement(AppRoutes.homeView);
        // Get.offAll(() => const HomeView(),
        //     transition: Transition.fadeIn, duration: const Duration(seconds: kTransitionNavigateDuration));
      },
    );
  }

  void initSlidingAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(_animationController);
    _animationController.forward();
  }
}
