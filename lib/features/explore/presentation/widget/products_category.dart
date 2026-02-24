import 'package:flutter/material.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/presentation/widget/item_cart.dart';

class ProductsCategory extends StatelessWidget {
  const ProductsCategory({
    super.key,
    required this.favProduct,
    required this.title,
  });

  final List<ProductModel> favProduct;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(title, style: getBodyStyle(),),
        centerTitle: true,
        actions: [

           Padding(
             padding: const EdgeInsets.only(right:10),
             child: Image.asset("assets/Group 6839.png"),
           )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          return ItemCard(model: favProduct[index]);
        },
        itemCount: favProduct.length,
      ),
    );
  }
}
