import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  const MySearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),

      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(Icons.person, color: Colors.grey),
          hintText: 'Email or username',
        ),
      ),
    );
  }
}
