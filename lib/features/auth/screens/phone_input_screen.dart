import 'package:flutter/material.dart';

class PhoneInputScreen extends StatelessWidget {
  const PhoneInputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final role = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Number'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            Text(
              'Continue as ${role.toUpperCase()}',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Enter your phone number to continue.',
            ),

            const SizedBox(height: 40),

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '078XXXXXXX',
                prefixText: '+250 ',
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/otp',
                  arguments: role,
                );
              },
              child: const Text('Send OTP'),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}