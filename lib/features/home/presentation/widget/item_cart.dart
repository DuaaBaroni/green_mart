// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/product_details/presentation/view/product_details.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, ProductDetailsScreen(model: model));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.smallText.withOpacity(0.4)),
          boxShadow: [
            BoxShadow(
              color: Color(0xff555E58).withValues(alpha: .1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: model.tagKey,
                    child: Image.asset(model.image),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                model.name,
                style: getSmallStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 7),
              Text(
                model.weight,
                style: getSmallStyle(color: AppColors.greyColor),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${model.price}',
                    style: getBodyStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: AppColors.backgroundColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
