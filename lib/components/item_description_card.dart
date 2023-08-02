import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class ItemDescriptionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const ItemDescriptionCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 90,
            height: 90,
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  title,
                  style: TextStyleApp.height24.copyWith(
                    color: ColorSourceApp.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: Text(
                  description,
                  style:
                      const TextStyle(color: ColorSourceApp.grey, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
