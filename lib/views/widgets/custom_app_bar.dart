import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        const CustomSearchIcon(),
      ],
    );
  }
}
