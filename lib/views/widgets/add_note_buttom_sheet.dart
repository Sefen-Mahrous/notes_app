import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elivated_button.dart';
import 'package:notes/views/widgets/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SingleChildScrollView(
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),

              CustomElevatedButton(onTap: () {}, buttonName: 'Add'),
            ],
          ),
        ),
      ),
    );
  }
}
