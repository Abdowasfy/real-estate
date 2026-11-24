import 'package:go_router/go_router.dart';
import 'package:real_estate/core/routing/app_routes.dart';
import 'package:real_estate/feature/onboarding/presentation/pages/onboarding_screen.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onboardScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onboardScreen,
        name: AppRoutes.onboardScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
    ],
  );
}
