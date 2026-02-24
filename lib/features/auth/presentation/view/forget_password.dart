import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/core/widgets/custom_text_feild.dart';
import 'package:green_mart/features/auth/presentation/widget/otp_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
          bottom: 60,
          right: 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter your mobile number",
                style: getBodyStyle(fontSize: 23),
              ),
              Gap(8),
              Text(
                "We need to verify you. We will send you a one time verification code.",
                style: getSmallStyle(color: AppColors.greyColor),
              ),
              Gap(30),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "01******"),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const Spacer(),
              CustomButton(
                text: "Next",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(context, OtpScreen(phone: phoneController.text));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
