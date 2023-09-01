import 'dart:ui';

import 'package:app/model/prices_toppings.dart';

class ItemDescription {
  final String imagePath;
  final String title;
  final String description;
  final Color buttonColor;
  final Color imageColor;
  final String price;
  final List<AddTopppings> selectedToppings;

  ItemDescription(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.imageColor,
      required this.buttonColor,
      required this.price,
      this.selectedToppings = const []});

  double get totalPrice {
    double toppingsPrice = 0.0;

    for (var topping in selectedToppings) {
      toppingsPrice += topping.toppingPrice;
    }
    return (double.parse(price) + toppingsPrice);
  }
}
