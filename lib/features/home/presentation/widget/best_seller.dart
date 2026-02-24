import 'package:flutter/material.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/presentation/widget/item_cart.dart';


class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: getTitleStyle(fontSize: 18)),
            TextButton(onPressed: () {}, child: Text('See All', 
            style: getSmallStyle(fontWeight: FontWeight.w600),
             ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = bestSelling[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: bestSelling.length,
          ),
        ),
      ],
    );
  }
}