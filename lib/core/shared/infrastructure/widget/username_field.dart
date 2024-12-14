import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;

  const UsernameField({
    super.key,
    required this.controller,
    this.label = 'Username',
    this.hint = 'Enter your username',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
