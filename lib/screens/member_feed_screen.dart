import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/check_in_card.dart';

class MemberFeedScreen extends StatelessWidget {
  final Member member;

  const MemberFeedScreen({
    super.key,
    required this.member,
  });

  @override
  Widget build(BuildContext context) {
    // Generate check-in dates for the member's progress
    final now = DateTime.now();
    final weekday = now.weekday;
    final startOfWeek = now.subtract(Duration(days: weekday - 1));

    return Scaffold(
      appBar: AppBar(
        title: Text(member.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: member.weeklyProgress == 0
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
              itemCount: member.weeklyProgress,
              itemBuilder: (context, index) {
                // Reverse order: latest first
                final reversedIndex = member.weeklyProgress - 1 - index;
                final checkInDate = startOfWeek.add(Duration(days: reversedIndex));
                final checkIn = CheckIn(
                  date: checkInDate,
                  member: member,
                  dayNumber: reversedIndex + 1,
                );
                return CheckInCard(checkIn: checkIn);
              },
            ),
    );
  }
}
