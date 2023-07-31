import 'package:flutter/material.dart';

import '../utils/color_source.dart';
import '../utils/text_style.dart';

class TextTitleDonuts extends StatelessWidget {
  const TextTitleDonuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Stack(
        children: [
          Text(
            'DONUTS SO GOOD YOU\'LL FORGET YOUR NAME',
            style: TextStyleApp.height24.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 42,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'DONUTS SO GOOD YOU\'LL FORGET YOUR NAME',
            style: TextStyle(
              fontSize: 43,
              fontFamily: 'Chocolate Bar Demo',
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = ColorSourceApp.pink,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
