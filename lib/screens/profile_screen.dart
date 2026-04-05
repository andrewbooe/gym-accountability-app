import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_list_item.dart';
import '../widgets/settings_item.dart';
import '../widgets/section_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(
              name: 'John Doe',
              email: 'john.doe@email.com',
            ),
            const SizedBox(height: 32),
            // Goals Section
            const SectionHeader(title: 'Goals', icon: Icons.flag_outlined),
            const SizedBox(height: 12),
            const ProfileCard(
              children: [
                ProfileListItem(label: 'Weekly workouts', value: '4 days'),
                Divider(),
                ProfileListItem(label: 'Monthly target', value: '16 days'),
                Divider(),
                ProfileListItem(label: 'Current streak', value: '3 days'),
              ],
            ),
            const SizedBox(height: 24),
            // Stats Section
            const SectionHeader(title: 'Stats', icon: Icons.bar_chart),
            const SizedBox(height: 12),
            const ProfileCard(
              children: [
                ProfileListItem(label: 'Total check-ins', value: '47'),
                Divider(),
                ProfileListItem(label: 'Best streak', value: '12 days'),
                Divider(),
                ProfileListItem(label: 'Money saved', value: '\$120.00'),
                Divider(),
                ProfileListItem(label: 'Member since', value: 'Jan 2026'),
              ],
            ),
            const SizedBox(height: 24),
            // Settings Section
            const SectionHeader(title: 'Settings', icon: Icons.settings_outlined),
            const SizedBox(height: 12),
            ProfileCard(
              children: [
                SettingsItem(label: 'Edit Profile', icon: Icons.edit_outlined, onTap: () {}),
                const Divider(),
                SettingsItem(label: 'Notifications', icon: Icons.notifications_outlined, onTap: () {}),
                const Divider(),
                SettingsItem(label: 'Payment Methods', icon: Icons.payment_outlined, onTap: () {}),
                const Divider(),
                SettingsItem(label: 'Privacy', icon: Icons.lock_outlined, onTap: () {}),
                const Divider(),
                SettingsItem(label: 'Help & Support', icon: Icons.help_outline, onTap: () {}),
                const Divider(),
                SettingsItem(label: 'Sign Out', icon: Icons.logout, isDestructive: true, onTap: () {}),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
