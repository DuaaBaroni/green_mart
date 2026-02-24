import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_text_feild.dart';
import 'package:green_mart/features/explore/data/category_model.dart';
import 'package:green_mart/features/explore/presentation/widget/products_category.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/search/presentation/view/search_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
          child: Text(
            "Find Products",
            style: getBodyStyle(color: AppColors.blackColor),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Hero(
              tag: 'search',
              child: Material(
                color: Colors.transparent,
                child: CustomTextFormField(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Store',
                  readOnly: true,
                  onTap: () {
                    navigateTo(context, const SearchScreen());
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      navigateTo(
                        context,
                        ProductsCategory(
                          title: category[index].name,
                          favProduct: favProduct
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        color: category[index].color,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: category[index].colorSide),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(category[index].image),
                          Expanded(
                            child: Center(
                              child: Text(
                                category[index].name,
                                textAlign: TextAlign.center,
                                style: getSmallStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}