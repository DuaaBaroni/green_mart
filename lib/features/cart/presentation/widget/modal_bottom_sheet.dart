import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/cart/presentation/widget/place_order.dart';
import 'package:green_mart/features/home/data/product_model.dart';

void showCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    // enableDrag: false,
    // isDismissible: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return CheckoutBottomSheet();
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * .5,
        minHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Checkout', style: getBodyStyle()),
                        IconButton(
                          onPressed: () {
                            pop(context);
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                    Divider(),
                    Gap(16),
                    Row(
                      children: [
                        Text(
                          'Delivery',
                          style: getBodyStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Selected Method",
                          style: getSmallStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Gap(6),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),

                    Divider(),
                    Gap(16),
                    Row(
                      children: [
                        Text(
                          'Payment',
                          style: getBodyStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Spacer(),
                        Image.asset("assets/card.png"),
                        Gap(6),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                    Divider(),
                    Gap(16),
                    Row(
                      children: [
                        Text(
                          'Promo Code',
                          style: getBodyStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Pick discount",
                          style: getSmallStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(6),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                    Divider(),
                    Gap(16),
                    Row(
                      children: [
                        Text(
                          'Total Cost',
                          style: getBodyStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$13.97",
                          style: getSmallStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(6),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                    Divider(),
                    Gap(10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "By placing an order you agree to our",
                            style: getSmallStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.smallText,
                            ),
                          ),
                          TextSpan(
                            text: "Terms",
                            style: getSmallStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: "And",
                            style: getSmallStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.smallText,
                            ),
                          ),
                          TextSpan(
                            text: "Conditions",
                            style: getSmallStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              text: 'Place Order',
              onPressed: () {
                navigateTo(context, PlaceOrderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
