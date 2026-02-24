import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/home/presentation/view/home_screen.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: SvgPicture.asset("assets/Group 6872.svg")),
            Gap(30),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Your Order has been accepted",
                style: getBodyStyle(fontWeight: FontWeight.w700, fontSize: 23),
              ),
            ),
            Gap(60),
            CustomButton(
              text: "Go To Home",
              onPressed: () {
                navigateTo(context, HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
