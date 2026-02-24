import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';
import 'package:green_mart/core/style/text_style.dart';
import 'package:green_mart/core/widgets/custom_btn.dart';
import 'package:green_mart/features/favourite/data/model/favourite_model.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Favourite", style: getBodyStyle(fontSize: 18)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: ListView.builder(
                itemCount: favourite.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: Image.asset(favourite[index].image),
                    title: Text(favourite[index].name, style: getBodyStyle()),
                    subtitle: Text(favourite[index].weight),
                    trailing: Text(favourite[index].price),
                  );
                },
              ),
            ),
            Spacer(),
            CustomButton(
              text: "Add All To Cart",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.white),
                        const SizedBox(width: 10),
                        Text(
                          "added to cart successfully",
                          style: getSmallStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
