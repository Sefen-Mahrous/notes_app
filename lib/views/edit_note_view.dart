import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_filed.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45),
              CustomAppBar(title: 'Edit Note'),
              SizedBox(height: 15),
              CustomTextField(hint: 'Title', label: 'add title'),
              SizedBox(height: 15),

              CustomTextField(maxLines: 25),
            ],
          ),
        ),
      ),
    );
  }
}
