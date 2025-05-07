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
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/get.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
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
                  ),
                ),
                const Text(
                  'Find it here,buy it now',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Gap(40),
                MyButton(
                  text: 'Get Started',
                  onTap: () {
                    // Navigate or handle start
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
