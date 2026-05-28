import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final role = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify OTP'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            const Text(
              'OTP Verification',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Enter the code sent to your phone.',
            ),

            const SizedBox(height: 40),

            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter OTP',
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Authenticated as $role',
                    ),
                  ),
                );
              },
              child: const Text('Verify'),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}