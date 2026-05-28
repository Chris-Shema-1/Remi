import 'package:flutter/material.dart';

import '../features/onboarding/screens/onboarding_screen.dart';
import '../features/splash/screens/splash_screen.dart';
import '../features/auth/screens/phone_input_screen.dart';
import '../features/auth/screens/otp_verification_screen.dart';
import '../features/auth/screens/role_selection_screen.dart';
import 'app_routes.dart';

class AppPages {

  static Map<String, WidgetBuilder> routes = {

    AppRoutes.splash: (context) => const SplashScreen(),

    AppRoutes.onboarding: (context) => const OnboardingScreen(),

    AppRoutes.roleSelection: (context) => const RoleSelectionScreen(),

    AppRoutes.phoneInput: (context) => const PhoneInputScreen(),

    AppRoutes.otp: (context) => const OTPVerificationScreen(),

  };
}