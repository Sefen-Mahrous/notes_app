import 'package:flutter/material.dart';
import 'package:notes/views/widgets/add_note_buttom_sheet.dart';
import 'package:notes/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8),
        child: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (builder) {
                return const AddNoteButtomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
