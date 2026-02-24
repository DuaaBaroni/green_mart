// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, this.hintText});
  final String? hintText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: getSmallStyle(color: AppColors.smallText, fontSize: 10),
        fillColor: AppColors.accentColor.withOpacity(0.4),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.backgroundColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.circular(10),
        ),

        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(obscureText ? Icons.visibility_off : Icons.remove_red_eye),
        ),
      ),
      validator: (input) {
        if (input!.isEmpty) {
          return 'Please enter your password';
        } else if (input.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
