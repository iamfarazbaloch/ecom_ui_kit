import 'package:ecom_ui_kit/widgets/my_button.dart';
import 'package:ecom_ui_kit/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgetPage extends StatelessWidget {
  ForgetPage({super.key});
  final emailController = TextEditingController();
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
                'Forget\nPassword?',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Gap(30),
              MySearchField(
                controller: emailController,
                icon: Icons.email,
                hint: 'Enter your email address',
                obscureText: false,
              ),
              Gap(30),
              Text(
                '* We will send you a message to set or reset your new password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),

              Gap(30),
              MyButton(
                text: 'Submit',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
