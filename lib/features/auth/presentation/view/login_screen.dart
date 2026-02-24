import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/functions/validation.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/bottom_navigation_bar.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/core/widgets/custom_text_feild.dart';
import 'package:green_mart/core/widgets/password_validate.dart';
import 'package:green_mart/features/auth/presentation/view/forget_password.dart';
import 'package:green_mart/features/auth/presentation/view/signup_screen.dart.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: SvgPicture.asset("assets/carrot.svg"),
                  ),
                  const SizedBox(height: 40),
                  Text('Sign Up', style: getBodyStyle()),
                  Gap(10),
                  Text(
                    'Enter your email and password',
                    style: getSmallStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    'Email',
                    style: getBodyStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(height: 7),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'example@gmail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isEmailValid(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Password',
                    style: getBodyStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(height: 7),
                  PasswordTextFormField(hintText: '********'),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: TextButton(
                      onPressed: () {
                        navigateTo(context, ForgetPassword());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: getSmallStyle(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        navigateTo(context, BottomNavBar());
                      }
                    },
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: getBodyStyle(fontSize: 14),
                      ),
                      Gap(4),
                      InkWell(
                        onTap: () {
                          navigateTo(context, SignupScreen());
                        },
                        child: Text(
                          "SignUp",
                          style: getSmallStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
