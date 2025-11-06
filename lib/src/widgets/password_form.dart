import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key, required this.label});

  final String label;

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final icon = obscureText ? Icons.visibility : Icons.visibility_off;
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(widget.label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        prefixIcon: Icon(Icons.key),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(icon),
        ),
      ),
    );
  }
}
