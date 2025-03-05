import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: (0.15)),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 45,
        width: 45,

        child: Icon(icon, size: 28),
      ),
    );
  }
}
