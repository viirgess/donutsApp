import 'package:flutter/material.dart';

import 'color_source.dart';
import 'text_style.dart';

class TextTitleDonuts extends StatelessWidget {
  const TextTitleDonuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: Stack(
        children: [
          Text(
            'DONUT CLUB',
            style: TextStyleApp.height24.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 42,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'DONUT CLUB',
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
