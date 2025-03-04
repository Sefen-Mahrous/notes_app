import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [CustomTextField(hint: 'Add Note Title', label: 'Add')],
      ),
    );
  }
}
