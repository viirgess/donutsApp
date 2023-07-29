import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class CardMenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CardMenuItem(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 90,
            height: 90,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              SizedBox(
                width: 230,
                child: Text(
                  title,
                  style: TextStyleApp.height24.copyWith(
                    color: ColorSourceApp.black,
                    fontSize: 19,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 230,
                child: Text(
                  description,
                  style:
                      const TextStyle(color: ColorSourceApp.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
