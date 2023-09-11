import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

import '../../widget/add_topings_item.dart';

class MenuItemFooter extends StatelessWidget {
  const MenuItemFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: const BoxDecoration(
          color: ColorSourceApp.lightPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Subtotal'),
                Text('9'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Spacer(),
                Text('Discount'),
                //Spacer(),
                Text('20%'),
                //Spacer(),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Divider(
              height: 1,
              color: ColorSourceApp.grey,
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                const Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // Spacer(),
                Text(
                  '\$$totalPrice',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // Spacer(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // ButtonAddToBusketItem(
            //   totalPrice: 12,
            // ),
          ],
        ),
      ),
    );
  }
}
