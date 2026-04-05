import 'package:flutter/material.dart';

class WeeklyCheckCircles extends StatelessWidget {
  final int totalDays;
  final int checkedDays;
  final void Function(int dayIndex)? onCheckedCircleTap;

  const WeeklyCheckCircles({
    super.key,
    required this.totalDays,
    required this.checkedDays,
    this.onCheckedCircleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(totalDays, (index) {
            final isChecked = index < checkedDays;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: isChecked ? () => onCheckedCircleTap?.call(index) : null,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isChecked
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                  ),
                  child: isChecked
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        )
                      : null,
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 16),
        Text(
          '$checkedDays/$totalDays days this week',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
