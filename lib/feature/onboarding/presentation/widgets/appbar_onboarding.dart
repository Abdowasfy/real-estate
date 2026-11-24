import 'package:flutter/material.dart';
import 'package:real_estate/core/styling/app_colors.dart';

class AppbarOnboarding extends StatelessWidget {
  const AppbarOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/logo/logo.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.buttoncolor,
            ),
            child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
