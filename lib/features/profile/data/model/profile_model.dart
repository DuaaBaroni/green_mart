class ProfileModel {
  final String image, title;

  ProfileModel({required this.image, required this.title});
}

List<ProfileModel> profile = [
   ProfileModel(image: "assets/Orders icon.png", title: "Orders"),
   ProfileModel(image: "assets/My Details icon.png", title: "My Details"),
   ProfileModel(image: "assets/Delicery address.png", title: "Delivery Address"),
   ProfileModel(image: "assets/Vector icon.png", title: "Payment Method"),
   ProfileModel(image: "assets/Promo Cord icon.png", title: "Promo Code"),
   ProfileModel(image: "assets/Bell icon.png", title: "Notification"),
   ProfileModel(image: "assets/help icon.png", title: "Help"),
   ProfileModel(image: "assets/about icon.png", title: "About"),
];
