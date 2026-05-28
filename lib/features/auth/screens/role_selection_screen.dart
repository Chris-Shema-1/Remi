import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget roleCard({
      required IconData icon,
      required String title,
      required String subtitle,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [

              Icon(
                icon,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Role'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            const Text(
              'How will you use Remi?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Select the role that best describes you.',
            ),

            const SizedBox(height: 40),

            roleCard(
              icon: Icons.home_work_rounded,
              title: 'Landlord',
              subtitle: 'Manage properties and tenants',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/phone-input',
                  arguments: 'landlord',
                );
              },
            ),

            roleCard(
              icon: Icons.person_rounded,
              title: 'Tenant',
              subtitle: 'Track rent and payment history',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/phone-input',
                  arguments: 'tenant',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}