import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: Stack(
        children: [
          Text(
            'Craving Some Donuts?',
            style: TextStyleApp.height20.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorSourceApp.black,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Craving Some Donuts?',
            style: TextStyleApp.height20.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorSourceApp.white,
              fontSize: 20.1,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
