import 'package:ecom_ui_kit/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              MySearchField(
                icon: Icons.person,
                hint: 'Username or Email',
                controller: emailController,
                obscureText: false,
              ),
              Gap(20),
              MySearchField(
                controller: passwordController,
                hint: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
