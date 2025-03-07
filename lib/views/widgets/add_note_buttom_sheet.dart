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
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hint: 'Add Note Title',
                label: 'Title',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                maxLines: 5,
                hint: 'Add Content',
                label: 'Content',
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.13),
          CustomElevatedButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            buttonName: 'Add',
          ),
        ],
      ),
    );
  }
}
