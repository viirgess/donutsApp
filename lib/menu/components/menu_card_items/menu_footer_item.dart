import 'package:app/menu/widget/button_busket.dart';
import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                Text('Subtotal'),
                //Spacer(),
                Text('9'),
                //Spacer(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // Spacer(),
                Text(
                  '\$12.99',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                // Spacer(),
              ],
            ),
            SizedBox(
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
