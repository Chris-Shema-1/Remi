import 'package:flutter/material.dart';

import '../features/onboarding/screens/onboarding_screen.dart';
import '../features/splash/screens/splash_screen.dart';
import 'app_routes.dart';

class AppPages {

  static Map<String, WidgetBuilder> routes = {

    AppRoutes.splash: (context) => const SplashScreen(),

    AppRoutes.onboarding: (context) => const OnboardingScreen(),

  };
}