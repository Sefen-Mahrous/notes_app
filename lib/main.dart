import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/views/constants.dart';
import 'package:notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        // primaryColorDark: Colors.,
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
