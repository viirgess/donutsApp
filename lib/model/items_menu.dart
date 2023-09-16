import 'dart:ui';

import 'package:app/model/prices_toppings.dart';

class ItemDescription {
  final String imagePath;
  final String title;
  final String description;
  final Color buttonColor;
  final Color imageColor;
  final String price;
  List<AddTopppings> selectedToppings;

  ItemDescription({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.imageColor,
    required this.buttonColor,
    required this.price,
    required this.selectedToppings,
  });
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
