import 'package:go_router/go_router.dart';
import 'package:real_estate/core/routing/app_routes.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onboardScreen,
    routes: [
      GoRoute(
        path: AppRoutes.splashScreen,
        name: AppRoutes.splashScreen,
        //builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
