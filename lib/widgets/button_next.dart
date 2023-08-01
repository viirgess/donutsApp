import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: ColorSourceApp.pinkGradient,
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        child: Icon(
          Icons.arrow_forward,
          color: ColorSourceApp.white,
          size: 26,
        ),
      ),
    );
  }
}
//Icons.arrow_forward,
