import 'package:flutter/material.dart';
import '../models/feed_item.dart';
import '../models/user.dart';
import '../widgets/check_in_button.dart';
import '../widgets/check_in_detail_sheet.dart';
import '../widgets/money_display.dart';
import '../widgets/weekly_check_circles.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final double _moneyAmount = 0.00;
  final int _totalDays = 7;
  final int _checkedDays = 3; // Set to 3 for testing

  // Mock current user member for check-ins
  final User _currentUser = const User(
    name: 'John Doe',
    weeklyProgress: 3,
    weeklyGoal: 7,
  );

  void _checkIn() {
    // TODO: Implement check-in functionality
  }

  void _onCircleTap(int dayIndex) {
    // Calculate the date for this check-in (assuming week starts on Monday)
    final now = DateTime.now();
    final weekday = now.weekday; // 1 = Monday, 7 = Sunday
    final startOfWeek = now.subtract(Duration(days: weekday - 1));
    final checkInDate = startOfWeek.add(Duration(days: dayIndex));

    final checkIn = CheckIn(
      date: checkInDate,
      user: _currentUser,
      dayNumber: dayIndex + 1,
    );

    CheckInDetailSheet.show(context, checkIn: checkIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            MoneyDisplay(amount: _moneyAmount),
            const SizedBox(height: 60),
            WeeklyCheckCircles(
              totalDays: _totalDays,
              checkedDays: _checkedDays,
              onCheckedCircleTap: _onCircleTap,
            ),
            const Spacer(),
            CheckInButton(onPressed: _checkIn),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
