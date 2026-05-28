import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const RemiApp());
}

class RemiApp extends StatelessWidget {
  const RemiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Remi',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      routes: AppPages.routes,
    );
  }
}