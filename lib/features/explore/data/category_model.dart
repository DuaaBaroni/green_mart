import 'package:flutter/material.dart';
import 'package:green_mart/core/style/colors.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;
  final Color color, colorSide;
  final String tagKey;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
    required this.colorSide,
    required this.tagKey,
  });
}

List<CategoryModel> category = [
  CategoryModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Frash Fruits & Vegetable',
    image: 'assets/pngfuel 6.png',
    color: AppColors.bgCategory,
    colorSide: AppColors.primaryColor,
  ),

  CategoryModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Cooking Oil & Ghee',
    image: 'assets/Group 6835.png',
    color: AppColors.bgCategory2,
    colorSide: AppColors.categorySide2,
  ),

  CategoryModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Meat & Fish',
    image: 'assets/pngfuel 9.png',
      color: AppColors.bgCategory3,
    colorSide: AppColors.categorySide3,
  ),

  CategoryModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bakery & Snacks',
    image: 'assets/pngfuel 6 (1).png',
      color: AppColors.bgCategory4,
    colorSide: AppColors.categorySide4,
  ),

  CategoryModel(
    id: '5',
    tagKey: UniqueKey().toString(),
    name: 'Dairy & Eggs',
    image: 'assets/pngfuel.png',
      color: AppColors.bgCategory5,
    colorSide: AppColors.categorySide5,
  ),

  CategoryModel(
    id: '6',
    tagKey: UniqueKey().toString(),
    name: 'Beverages',
    image: 'assets/pngfuel 6 (2).png',
      color: AppColors.bgCategory6,
    colorSide: AppColors.categorySide6,
  ),
];
