import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/auth/presentation/view/login_screen.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phone});

  final String phone;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String otpCode = ''; // 👈 هنا يترجع الرقم

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultTheme = PinTheme(
      width: 50,
      height: 55,
      textStyle: getBodyStyle(fontSize: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.greyColor.withOpacity(0.4)),
      ),
    );

    final focusedTheme = defaultTheme.copyWith(
      decoration: defaultTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.primaryColor, width: 1.5),
      ),
    );

    final submittedTheme = defaultTheme.copyWith(
      decoration: defaultTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.primaryColor),
        color: AppColors.primaryColor.withOpacity(0.05),
      ),
    );

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter verification code",
                style: getBodyStyle(fontSize: 23),
              ),
              Gap(8),
              Text(
                "We have sent SMS to: ${widget.phone}",
                style: getSmallStyle(color: AppColors.greyColor),
              ),
              Gap(40),

              Form(
                key: formKey,
                child: Center(
                  child: Pinput(
                    length: 5,
                    controller: pinController,
                    defaultPinTheme: defaultTheme,
                    focusedPinTheme: focusedTheme,
                    submittedPinTheme: submittedTheme,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      otpCode = value;
                    },
                    onCompleted: (pin) {
                      otpCode = pin;
                      debugPrint("OTP: $otpCode");
                    },
                    validator: (value) {
                      if (value == null || value.length < 5) {
                        return 'Please enter the full code';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Change Phone Number",
                    style: getSmallStyle(color: AppColors.smallText),
                  ),
                ],
              ),

              Gap(40),
              CustomButton(
                text: "Confirm",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    debugPrint("Verifying OTP: $otpCode");
                    navigateTo(context, LoginScreen());
                  }
                },
              ),

              Gap(20),

              Center(
                child: Text(
                  "Resend OTP",
                  style: getSmallStyle(color: AppColors.greyColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
