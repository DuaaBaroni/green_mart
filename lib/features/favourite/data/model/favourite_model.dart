class FavouriteModel {
  final String name;
  final String weight;
  final String price;
  final String image;

  FavouriteModel({
    required this.name,
    required this.weight,
    required this.price,
    required this.image,
  });
}

List<FavouriteModel> favourite = [
  FavouriteModel(
    name: "Sprite",
    price: "\$1.50",
    image: "assets/pngfuel 12.png",
    weight: "325ml",
  ),
  FavouriteModel(
    name: "Diet Coke",
    price: "\$1.99",
    image: "assets/pngfuel 11.png",
    weight: "350ml",
  ),
  FavouriteModel(
    name: "Apple & Grape Juice",
    price: "\$15.0",
    image: "assets/tree-top-juice-apple-grape-64oz 1.png",
    weight: "2l",
  ),
];
