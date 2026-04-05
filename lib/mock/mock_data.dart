import '../models/group.dart';
import '../models/member.dart';

class MockData {
  static List<Group> getGroups() {
    return [
      const Group(
        name: 'Morning Crew',
        totalMoney: 250.00,
        punishmentValue: 25.00,
        members: [
          Member(name: 'John Doe', weeklyProgress: 5, weeklyGoal: 7),
          Member(name: 'Jane Smith', weeklyProgress: 7, weeklyGoal: 7),
          Member(name: 'Mike Johnson', weeklyProgress: 3, weeklyGoal: 7),
        ],
      ),
      const Group(
        name: 'Weightlifting Squad',
        totalMoney: 180.00,
        punishmentValue: 20.00,
        members: [
          Member(name: 'Sarah Wilson', weeklyProgress: 4, weeklyGoal: 7),
          Member(name: 'Tom Brown', weeklyProgress: 6, weeklyGoal: 7),
          Member(name: 'Emily Davis', weeklyProgress: 2, weeklyGoal: 7),
          Member(name: 'Chris Lee', weeklyProgress: 5, weeklyGoal: 7),
        ],
      ),
      const Group(
        name: 'Cardio Kings',
        totalMoney: 120.00,
        punishmentValue: 30.00,
        members: [
          Member(name: 'Alex Turner', weeklyProgress: 7, weeklyGoal: 7),
          Member(name: 'Jordan White', weeklyProgress: 1, weeklyGoal: 7),
        ],
      ),
    ];
  }
}
