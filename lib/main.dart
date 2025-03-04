import 'package:flutter/material.dart';
import 'package:notes/views/home_page_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomePageView.id: (context) => HomePageView()},
      initialRoute: HomePageView.id,
    );
  }
}
