import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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

        child: const Icon(Icons.search, size: 28),
      ),
    );
  }
}
