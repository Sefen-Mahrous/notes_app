import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elivated_button.dart';
import 'package:notes/views/widgets/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const CustomTextField(hint: 'Add Note Title', label: 'Title'),
              SizedBox(height: 15),
              const CustomTextField(
                maxLines: 5,
                hint: 'Add Content',
                label: 'Content',
              ),
            ],
          ),

          CustomElevatedButton(onTap: () {}, buttonName: 'Add'),
        ],
      ),
    );
  }
}
