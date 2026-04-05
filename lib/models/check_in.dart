import 'member.dart';

class CheckIn {
  final DateTime date;
  final String? imageUrl;
  final Member member;
  final int dayNumber;

  const CheckIn({
    required this.date,
    required this.member,
    required this.dayNumber,
    this.imageUrl,
  });

  int get total => member.weeklyGoal;

  String get progressDisplay => '$dayNumber / $total';

  CheckIn copyWith({
    DateTime? date,
    String? imageUrl,
    Member? member,
    int? dayNumber,
  }) {
    return CheckIn(
      date: date ?? this.date,
      imageUrl: imageUrl ?? this.imageUrl,
      member: member ?? this.member,
      dayNumber: dayNumber ?? this.dayNumber,
    );
  }
}
