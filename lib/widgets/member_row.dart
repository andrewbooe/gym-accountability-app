import 'package:flutter/material.dart';
import '../models/user.dart';
import '../screens/user_feed_screen.dart';

class MemberRow extends StatelessWidget {
  final User member;

  const MemberRow({
    super.key,
    required this.member,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserFeedScreen(user: member),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Text(
                member.name.substring(0, 1),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                member.name,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: member.progressPercent >= 1.0
                    ? Colors.green.shade100
                    : member.progressPercent >= 0.5
                        ? Colors.orange.shade100
                        : Colors.red.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${member.weeklyProgress} / ${member.weeklyGoal}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: member.progressPercent >= 1.0
                      ? Colors.green.shade700
                      : member.progressPercent >= 0.5
                          ? Colors.orange.shade700
                          : Colors.red.shade700,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[400],
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
