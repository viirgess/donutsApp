import 'dart:ui';

class ItemDescription {
  final String imagePath;
  final String title;
  final String description;
  final Color buttonColor;
  final Color imageColor;
  final String price;

  ItemDescription(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.imageColor,
      required this.buttonColor,
      required this.price});
}

class MenuItem {
  final String title;
  final String description;
  final String imagePath;
  final Color imageColor;
  final String price;
  final Color buttonColor;

  MenuItem({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.imageColor,
    required this.price,
    required this.buttonColor,
  });
}
