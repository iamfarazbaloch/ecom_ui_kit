import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final TextEditingController controller;
  const MySearchField({
    super.key,
    required this.icon,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(icon, color: Colors.grey),
          hintText: hint,
        ),
      ),
    );
  }
}
