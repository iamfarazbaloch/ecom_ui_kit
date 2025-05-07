import 'package:ecom_ui_kit/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome\nBack!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Gap(20),
              MySearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
