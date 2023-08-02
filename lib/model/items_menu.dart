import 'dart:ui';

import '../widgets/button_add_item.dart';

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
