import 'package:flutter/material.dart';
import 'package:riverpod_app_example/app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;

  final Widget? suffixIcon;
  const CustomTextField(
      {super.key, required this.keyboardType, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabledBorder: InputBorder.none,
          filled: true,
          fillColor: AppColors.grey,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
