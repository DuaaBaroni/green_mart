import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/features/auth/presentation/view/login_screen.dart';
import 'package:green_mart/features/profile/data/model/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.backgroundColor,
                backgroundImage: AssetImage("assets/Group.png"),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Duaa Baroni", style: getBodyStyle()),
                  Gap(10),
                  Image.asset("assets/Vector (2).png"),
                ],
              ),
              subtitle: Text(
                "duaabaronu@gmail.com",
                style: getSmallStyle(color: AppColors.smallText),
              ),
            ),
            Gap(10),
            const Divider(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  
                ),
                itemCount: profile.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(profile[index].image),
                    title: Text(
                      profile[index].title,
                      style: getBodyStyle(fontSize: 14),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
            const Gap(26),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  navigateTo(context, const LoginScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: AppColors.primaryColor),
                    const Gap(10),
                    Text(
                      "Logout",
                      style: getBodyStyle(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
