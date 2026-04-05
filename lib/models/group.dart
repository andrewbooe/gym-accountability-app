import 'member.dart';

class Group {
  final String name;
  final List<Member> members;
  final double punishmentValue;
  final double totalMoney;

  const Group({
    required this.name,
    required this.members,
    required this.punishmentValue,
    required this.totalMoney,
  });

  int get memberCount => members.length;

  Group copyWith({
    String? name,
    List<Member>? members,
    double? punishmentValue,
    double? totalMoney,
  }) {
    return Group(
      name: name ?? this.name,
      members: members ?? this.members,
      punishmentValue: punishmentValue ?? this.punishmentValue,
      totalMoney: totalMoney ?? this.totalMoney,
    );
  }
}
