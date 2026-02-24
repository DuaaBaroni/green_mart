import 'package:flutter/material.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/presentation/widget/item_cart.dart';

class FilteredGridView extends StatelessWidget {
  const FilteredGridView({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        // childAspectRatio: .6,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        return ItemCard(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}