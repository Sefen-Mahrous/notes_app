import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [SizedBox(height: 45), CustomAppBar()]);
  }
}
