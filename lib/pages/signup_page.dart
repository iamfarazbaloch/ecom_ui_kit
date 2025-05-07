import 'package:ecom_ui_kit/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/my_search_field.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
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
                'Create an\nAccount',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Gap(30),
              MySearchField(
                icon: Icons.person,
                hint: 'Username or Email',
                controller: emailController,
                obscureText: false,
              ),
              Gap(30),
              MySearchField(
                controller: passwordController,
                hint: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              Gap(30),
              MySearchField(
                controller: confirmPasswordController,
                hint: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              Gap(30),
              Text(
                'By clicking the Register button, you agree\nto the public offer',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),

              Gap(40),
              MyButton(text: 'Create an Account', onTap: () {}),
              Gap(50),
              Center(child: Text('- Or Continue with -')),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/gl.png'),
                  Gap(10),
                  Image.asset('assets/icons/ap.png'),
                  Gap(10),
                  Image.asset('assets/icons/fb.png'),
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
