import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/auth/presentation/view/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Image.asset(
            "assets/welcome.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 70,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/carrot.svg",
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'Welcome \nto our store',
                    textAlign: TextAlign.center,
                    style: getBodyStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Ger your groceries in as fast as one hour',
                      style: getSmallStyle(
                        color: AppColors.smallText,
                        fontSize: 12,
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Get Started',
                    onPressed: () {
                     pushReplacement(context, LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}