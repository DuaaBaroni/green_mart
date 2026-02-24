import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigator.dart';
import 'package:green_mart/core/widgets/custom_text_feild.dart';
import 'package:green_mart/features/explore/presentation/view/explore_screen.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/search/presentation/widget/filter_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey = '';

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateTo(context, ExploreScreen());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        titleSpacing: 0,
        title: Material(
          color: Colors.transparent,
          child: CustomTextFormField(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search here',
            focusNode: focusNode,
            onChange: (value) {
              setState(() {
                searchKey = value;
              });
            },
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductsByName(searchKey)),
    );
  }
}

List<ProductModel> getProductsByName(String searchKey) {
  return allProducts
      .where((product) => product.name.toLowerCase().contains(searchKey))
      .toList();
}
