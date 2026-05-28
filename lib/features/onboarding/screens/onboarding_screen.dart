import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [

            const Spacer(),

            Icon(
              Icons.home_work_rounded,
              size: 120,
              color: Theme.of(context).primaryColor,
            ),

            const SizedBox(height: 30),

            const Text(
              'Welcome to Remi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Manage properties, tenants, and rent payments easily.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}