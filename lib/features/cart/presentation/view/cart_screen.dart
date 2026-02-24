// ignore_for_file: unnecessary_underscores, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/cart/presentation/widget/modal_bottom_sheet.dart';
import 'package:green_mart/features/favourite/data/model/favourite_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key,});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<int> quantities = List.generate(favourite.length, (_) => 1);

  // double get totalPrice {
  //   double total = 0;
  //   for (int i = 0; i < favourite.length; i++) {
  //     final price =
  //         double.tryParse(favourite[i].price.replaceAll('\$', '')) ?? 0;
  //     total += price * quantities[i];
  //   }
  //   return total;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text("My Cart", style: getBodyStyle()),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: favourite.length,
                separatorBuilder: (_, __) =>
                    Divider(color: AppColors.greyColor.withOpacity(0.3)
                    ),
                
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          favourite[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: 12),
              
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              favourite[index].name,
                              style: getBodyStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              favourite[index].weight,
                              style: getSmallStyle(color: AppColors.greyColor),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                buildQtyButton(
                                  icon: Icons.remove,
                                  onTap: () {
                                    if (quantities[index] > 1) {
                                      setState(() => quantities[index]--);
                                    }
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    '${quantities[index]}',
                                    style: getBodyStyle(fontSize: 14),
                                  ),
                                ),
                                buildQtyButton(
                                  icon: Icons.add,
                                  onTap: () {
                                    setState(() => quantities[index]++);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
              
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                favourite.removeAt(index);
                                quantities.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.close,
                              size: 18,
                              color: AppColors.greyColor,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            favourite[index].price,
                            style: getBodyStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            CustomButton(text: "Go to Checkout", onPressed: () {
                 showCheckoutBottomSheet(context);
            }),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildQtyButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyColor.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 16, color: AppColors.blackColor),
      ),
    );
  }
}
