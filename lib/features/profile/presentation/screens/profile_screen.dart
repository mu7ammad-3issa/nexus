import 'package:flutter/material.dart';
import 'package:nexus/features/plans/subscription_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.person, size: 50, color: Colors.black),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ESRAA MORSI',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text('SUBSCRIPTION: PREMIUM'),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.grey[800],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const Text('TRAINING PROGRESS: 60%'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
              const SizedBox(height: 16),

              // Achievements
              const Text('ACHIEVEMENTS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAchievementTile(
                  'Fire Safety Expert', Icons.local_fire_department),
              _buildAchievementTile(
                  'Car Emergency Responder', Icons.directions_car),
              const SizedBox(height: 16),

              // Training History
              const Text('TRAINING HISTORY',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildTrainingTile(
                  'Home Fire Drill', 'Completed', Icons.check_circle),
              _buildTrainingTile(
                  'Factory Safety', 'In Progress', Icons.hourglass_empty),
              const SizedBox(height: 16),

              // Certificates
              const Text('CERTIFICATES',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildCertificateTile('FIRE SAFETY TRAINING'),
              _buildCertificateTile('INDUSTRIAL SAFETY'),
              const SizedBox(height: 16),

              // Settings
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('SETTINGS'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),

              // Logout
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title:
                    const Text('LOGOUT', style: TextStyle(color: Colors.red)),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubscriptionScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAchievementTile(String title, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }

  Widget _buildTrainingTile(String title, String status, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(status),
      ),
    );
  }

  Widget _buildCertificateTile(String title) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: () {}, child: const Text('Preview')),
            TextButton(onPressed: () {}, child: const Text('Download')),
          ],
        ),
      ),
    );
  }
}
