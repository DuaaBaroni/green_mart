import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/cart/presentation/view/cart_screen.dart';
import 'package:green_mart/features/favourite/data/model/favourite_model.dart';
import 'package:green_mart/features/home/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavourite = false;

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 10),
            Text(message, style: getSmallStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: const Color(0xffF2F3F2),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .3,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Hero(
                  tag: widget.model.tagKey,
                  child: Image.asset(widget.model.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.model.name, style: getBodyStyle()),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          final alreadyExists = favourite.any(
                            (f) => f.name == widget.model.name,
                          );

                          if (!alreadyExists) {
                            favourite.add(
                              FavouriteModel(
                                name: widget.model.name,
                                weight: widget.model.weight,
                                price: '\$${widget.model.price}',
                                image: widget.model.image,
                              ),
                            );
                            setState(() => isFavourite = true);
                            _showSnackBar(
                              'Added to Favourite!',
                              AppColors.primaryColor,
                            );
                          } else {
                            _showSnackBar(
                              'Already in Favourite!',
                              Colors.orange,
                            );
                          }
                        },
                        child: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
                      const Text("1"),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                      const Spacer(),
                      Text('\$${widget.model.price}', style: getBodyStyle()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    initiallyExpanded: true,
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.smallText,
                    ),
                    title: Text(
                      'Product Details',
                      style: getBodyStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    children: [
                      Text(
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                        style: getSmallStyle(
                          color: AppColors.smallText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Text(
                        'Nutritions',
                        style: getBodyStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "100gr",
                        style: getSmallStyle(color: AppColors.smallText),
                      ),
                      Gap(6),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                  Gap(10),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: getBodyStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Image.asset("assets/Group 6834.png"),
                      Gap(6),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
        child: CustomButton(
          text: 'Add to Cart',
          onPressed: () {
            final alreadyExists = favourite.any(
              (f) => f.name == widget.model.name,
            );

            if (!alreadyExists) {
              favourite.add(
                FavouriteModel(
                  name: widget.model.name,
                  weight: widget.model.weight,
                  price: '\$${widget.model.price}',
                  image: widget.model.image,
                ),
              );
            }

            _showSnackBar(
              alreadyExists
                  ? 'Already in Cart!'
                  : 'Added to Cart Successfully!',
              alreadyExists ? AppColors.tangoColor : AppColors.primaryColor,
            );
          },
        ),
      ),
    );
  }
}
