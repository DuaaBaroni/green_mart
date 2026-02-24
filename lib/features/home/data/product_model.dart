import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final String tagKey;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.tagKey,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'assets/banana.png',
  ),
  ProductModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'assets/Frame 6.png',
  ),
  ProductModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Ginger',
    price: 10.5,
    weight: '1kg',
    image: 'assets/pngfuel 3.png',
  ),
  ProductModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bell Paper Red',
    price: 5.5,
    weight: '1kg',
    image: 'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'assets/Frame 6.png',
  ),
  ProductModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'assets/banana.png',
  ),
  ProductModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Ginger',
    price: 10.5,
    weight: '1kg',
    image: 'assets/pngfuel 3.png',
  ),
  ProductModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bell Paper Red',
    price: 5.5,
    weight: '1kg',
    image: 'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
  ),
];

List<ProductModel> favProduct = [
  ProductModel(
    name: "Sprite",
    price: 1.50,
    image: "assets/pngfuel 12.png",
    weight: "325ml",
    id: "1",
    tagKey: UniqueKey().toString(),
  ),
  ProductModel(
    name: "Diet Coke",
    price: 1.99,
    image: "assets/pngfuel 11.png",
    weight: "350ml",
    id: "2",
    tagKey: UniqueKey().toString(),
  ),
  ProductModel(
    name: "Apple & Grape Juice",
    price: 15.0,
    image: "assets/tree-top-juice-apple-grape-64oz 1.png",
    weight: "2l",
    id: "3",
    tagKey: UniqueKey().toString(),
  ),
  ProductModel(
    name: "Coca Cola Can",
    price: 4.9,
    image: "assets/pngfuel 13.png",
    weight: "350ml",
    id: "4",
    tagKey: UniqueKey().toString(),
  ),
  ProductModel(
    name: "Pepsi Can ",
    price: 4.9,
    image: "assets/pngfuel 14.png",
    weight: "350ml",
    id: "5",
    tagKey: UniqueKey().toString(),
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'assets/Frame 6.png',
  ),
  ProductModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'assets/banana.png',
  ),
  ProductModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Ginger',
    price: 10.5,
    weight: '1kg',
    image: 'assets/pngfuel 3.png',
  ),
  ProductModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: 'assets/Group.png',
  ),
  ProductModel(
    id: '5',
    tagKey: UniqueKey().toString(),
    name: 'Apple Pro',
    price: 24,
    weight: '1kg',
    image: 'assets/Frame 6.png',
  ),
];

