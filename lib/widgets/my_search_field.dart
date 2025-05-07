import 'package:flutter/material.dart';

class MySearchField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;

  const MySearchField({
    super.key,
    required this.icon,
    required this.hint,
    required this.controller,
    required this.obscureText,
  });

  @override
  State<MySearchField> createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(widget.icon, color: Colors.grey),
          hintText: widget.hint,
          suffixIcon:
              widget.obscureText
                  ? IconButton(
                    icon: Icon(
                      _obscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                  )
                  : null,
        ),
      ),
    );
  }
}
