import 'package:flutter/material.dart';
import '../mock/mock_data.dart';
import '../widgets/group_card.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = MockData.getGroups();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: groups.length,
        itemBuilder: (context, index) {
          return GroupCard(group: groups[index]);
        },
      ),
    );
  }
}
