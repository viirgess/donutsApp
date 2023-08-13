import 'dart:ui';

import 'package:app/menu/components/menu_card_items/card_item_checkout.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'menu_footer_item.dart';

class CardModalSheet extends StatelessWidget {
  const CardModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Container(
        decoration: BoxDecoration(
          color: ColorSourceApp.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 20,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: FractionallySizedBox(
          heightFactor: 0.82,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 20),
                child: Text(
                  'My Card',
                  style: TextStyleApp.height20.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorSourceApp.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: CardItemCheckout(
                  imagePath: 'images/blue_donuts.png',
                  title: 'SPRINKLE-TOPPED BLUE CREAM DREAM',
                  price: '\$12.99',
                  imageColor: ColorSourceApp.lightBlue,
                ),
              ),
              const Spacer(),
              const MenuItemFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
