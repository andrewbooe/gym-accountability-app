import '../models/group.dart';
import '../models/user.dart';

class MockData {
  static List<Group> getGroups() {
    return [
      const Group(
        name: 'Morning Crew',
        totalMoney: 250.00,
        punishmentValue: 25.00,
        users: [
          User(name: 'John Doe', weeklyProgress: 5, weeklyGoal: 7),
          User(name: 'Jane Smith', weeklyProgress: 7, weeklyGoal: 7),
          User(name: 'Mike Johnson', weeklyProgress: 3, weeklyGoal: 7),
        ],
      ),
      const Group(
        name: 'Weightlifting Squad',
        totalMoney: 180.00,
        punishmentValue: 20.00,
        users: [
          User(name: 'Sarah Wilson', weeklyProgress: 4, weeklyGoal: 7),
          User(name: 'Tom Brown', weeklyProgress: 6, weeklyGoal: 7),
          User(name: 'Emily Davis', weeklyProgress: 2, weeklyGoal: 7),
          User(name: 'Chris Lee', weeklyProgress: 5, weeklyGoal: 7),
        ],
      ),
      const Group(
        name: 'Cardio Kings',
        totalMoney: 120.00,
        punishmentValue: 30.00,
        users: [
          User(name: 'Alex Turner', weeklyProgress: 7, weeklyGoal: 7),
          User(name: 'Jordan White', weeklyProgress: 1, weeklyGoal: 7),
        ],
      ),
    ];
  }
}
