import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Notes', style: TextStyle(fontSize: 28)),
        const CustomSearchIcon(),
      ],
    );
  }
}
