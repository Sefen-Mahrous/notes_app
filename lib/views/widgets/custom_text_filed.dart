import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final String? label;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  const CustomTextField({
    super.key,
    this.onChanged,
    @required this.hint,
    @required this.label,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field Required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.4)),
        ),
        hintText: hint,
        label: Text(label ?? ''),
        labelStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
