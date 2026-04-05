class Member {
  final String name;
  final int weeklyProgress;
  final int weeklyGoal;

  const Member({
    required this.name,
    required this.weeklyProgress,
    required this.weeklyGoal,
  });

  double get progressPercent => weeklyGoal > 0 ? weeklyProgress / weeklyGoal : 0;

  bool get isGoalMet => weeklyProgress >= weeklyGoal;

  Member copyWith({
    String? name,
    int? weeklyProgress,
    int? weeklyGoal,
  }) {
    return Member(
      name: name ?? this.name,
      weeklyProgress: weeklyProgress ?? this.weeklyProgress,
      weeklyGoal: weeklyGoal ?? this.weeklyGoal,
    );
  }
}
