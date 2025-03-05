import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 45),
          CustomAppBar(icon: Icons.search, title: 'Notes'),
          SizedBox(height: 15),
          NotesListView(),
        ],
      ),
    );
  }
}
