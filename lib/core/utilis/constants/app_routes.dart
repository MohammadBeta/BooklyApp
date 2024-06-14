import 'package:go_router/go_router.dart';

import '../../../featuers/home/presentation/views/book_details_view.dart';
import '../../../featuers/home/presentation/views/home_view.dart';
import '../../../featuers/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
 static const String homeView = '/homeView';
 static const String bookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
            GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      
    ],
  );
}
