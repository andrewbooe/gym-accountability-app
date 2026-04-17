import 'package:flutter/material.dart';
import '../models/feed_item.dart';
import 'check_in_card.dart';

class CheckInDetailSheet extends StatelessWidget {
  final CheckIn checkIn;

  const CheckInDetailSheet({
    super.key,
    required this.checkIn,
  });

  static void show(BuildContext context, {required CheckIn checkIn}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => CheckInDetailSheet(checkIn: checkIn),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 16),
          CheckInCard(checkIn: checkIn),
        ],
      ),
    );
  }
}
