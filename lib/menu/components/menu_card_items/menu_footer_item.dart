import 'package:app/menu/components/menu_card_items/widget/button_cart.dart';
import 'package:app/menu/widget/add_topings_item.dart';
import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class MenuItemFooter extends StatelessWidget {
  const MenuItemFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 170,
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
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  // Spacer(),
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
              const ButtonCart(),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
