import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'button_repeat.dart';

class OrderMenuItem extends StatelessWidget {
  const OrderMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: ColorSourceApp.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorSourceApp.lightBrown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/brown_donuts.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 10),
                  child: Column(
                    children: [
                      Text(
                        'HAZELNUT DELIGHT SPREAD',
                        style: TextStyleApp.height24.copyWith(
                          color: ColorSourceApp.black,
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$11.99',
                            style: TextStyleApp.lato.copyWith(
                              color: ColorSourceApp.black,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          const ButtonRepeat(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
