import 'package:ecom_ui_kit/widgets/my_button.dart';
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
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Gap(30),
              MyButton(text: 'Login', onTap: () {}),
              Gap(50),
              Center(child: Text('- Or Continue with -')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
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
