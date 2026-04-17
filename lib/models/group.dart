import 'user.dart';

class Group {
  final String name;
  final List<User> users;
  final double punishmentValue;
  final double totalMoney;

  const Group({
    required this.name,
    required this.users,
    required this.punishmentValue,
    required this.totalMoney,
  });

  int get userCount => users.length;

  Group copyWith({
    String? name,
    List<User>? users,
    double? punishmentValue,
    double? totalMoney,
  }) {
    return Group(
      name: name ?? this.name,
      users: users ?? this.users,
      punishmentValue: punishmentValue ?? this.punishmentValue,
      totalMoney: totalMoney ?? this.totalMoney,
    );
  }
}
