import 'package:flutter/material.dart';
import '../models/feed_item.dart';
import '../models/user.dart';
import '../widgets/check_in_card.dart';

class UserFeedScreen extends StatelessWidget {
  final User user;

  const UserFeedScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    // Generate check-in dates for the member's progress
    final now = DateTime.now();
    final weekday = now.weekday;
    final startOfWeek = now.subtract(Duration(days: weekday - 1));

    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: user.weeklyProgress == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No check-ins yet this week',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: user.weeklyProgress,
              itemBuilder: (context, index) {
                // Reverse order: latest first
                final reversedIndex = user.weeklyProgress - 1 - index;
                final checkInDate = startOfWeek.add(Duration(days: reversedIndex));
                final checkIn = CheckIn(
                  date: checkInDate,
                  user: user,
                  dayNumber: reversedIndex + 1,
                );
                return CheckInCard(checkIn: checkIn);
              },
            ),
    );
  }
}
