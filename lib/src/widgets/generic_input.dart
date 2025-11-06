import 'package:flutter/material.dart';

class GenericInput extends StatelessWidget {
  const GenericInput({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}
