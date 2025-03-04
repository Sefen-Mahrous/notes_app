import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
