import 'package:flutter/material.dart';
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
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
