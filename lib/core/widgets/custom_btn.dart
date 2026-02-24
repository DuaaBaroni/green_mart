import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
           backgroundColor: AppColors.primaryColor,
           padding: EdgeInsets.all(18),
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
           )
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: getBodyStyle(
             color: AppColors.backgroundColor
          )
        ),
      ),
    );
  }
}