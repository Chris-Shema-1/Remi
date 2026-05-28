import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),

            const Text(
              'Welcome to Remi',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Smart property management for landlords and tenants.',
              textAlign: TextAlign.center,
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}