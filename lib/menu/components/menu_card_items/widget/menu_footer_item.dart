import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

import 'button_cart.dart';

class MenuItemFooter extends StatelessWidget {
  const MenuItemFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: const BoxDecoration(
          color: ColorSourceApp.lightPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          )),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '\$12.99',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              height: 1,
              color: ColorSourceApp.grey,
            ),
            SizedBox(
              height: 18,
            ),
            ButtonCart(),
          ],
        ),
      ),
    );
  }
}
