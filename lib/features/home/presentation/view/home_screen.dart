// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/widgets/custom_text_feild.dart';
import 'package:green_mart/features/home/presentation/widget/best_seller.dart';
import 'package:green_mart/features/home/presentation/widget/offer_builder.dart';
import 'package:green_mart/features/search/presentation/view/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SvgPicture.asset(
            "assets/logo.svg",
            color: AppColors.primaryColor,
            height: 50,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Store',
                    readOnly: true,
                    onTap: () {
                        navigateTo(context, SearchScreen());
                    },
                  ),
                ),
              ),
              OffersBuilder(),
              BestSellingBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
