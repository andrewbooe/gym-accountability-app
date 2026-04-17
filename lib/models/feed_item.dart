import 'user.dart';

class CheckIn {
  final DateTime date;
  final String? imageUrl;
  final User user;
  final int dayNumber;

  const CheckIn({
    required this.date,
    required this.user,
    required this.dayNumber,
    this.imageUrl,
  });

  int get total => user.weeklyGoal;

  String get progressDisplay => '$dayNumber / $total';

  CheckIn copyWith({
    DateTime? date,
    String? imageUrl,
    User? user,
    int? dayNumber,
  }) {
    return CheckIn(
      date: date ?? this.date,
      imageUrl: imageUrl ?? this.imageUrl,
      user: user ?? this.user,
      dayNumber: dayNumber ?? this.dayNumber,
    );
  }
}
