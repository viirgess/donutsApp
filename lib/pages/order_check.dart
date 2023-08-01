import 'package:flutter/material.dart';

import '../utils/color_source.dart';
import '../utils/text_style.dart';
import '../widgets/grid_menu_item.dart';

class OrderCheck extends StatelessWidget {
  const OrderCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GridMenuItem(),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Please check your order',
            style: TextStyleApp.height24.copyWith(
              color: ColorSourceApp.black,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
