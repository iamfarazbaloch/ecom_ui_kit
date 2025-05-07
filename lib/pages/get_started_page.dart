import 'dart:ui';
import 'package:ecom_ui_kit/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/get.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Blurred background for texts and button
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'You want\nAuthentic, here\nyou go!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    'Find it here,buy it now',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const Gap(40),
                  MyButton(
                    text: 'Get Started',
                    onTap: () {
                      // Navigate or handle start
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
