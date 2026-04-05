import 'package:flutter/material.dart';

class CheckInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const CheckInButton({
    super.key,
    this.onPressed,
    this.label = 'Check In',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
