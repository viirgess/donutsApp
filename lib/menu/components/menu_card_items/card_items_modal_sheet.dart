import 'dart:ui';

import 'package:app/menu/components/menu_card_items/card_item_checkout.dart';
import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'menu_footer_item.dart';

class CardModalSheet extends StatelessWidget {
  const CardModalSheet({
    super.key,
  });

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
        child: BlocProvider<AddItemToBusketCubit>(
          create: (context) => AddItemToBusketCubit(),
          child: BlocConsumer<AddItemToBusketCubit, AddItemToBusketState>(
            builder: (context, state) {
              final cartItems = context
                  .select((AddItemToBusketCubit cubit) => cubit.cartItems);
              //final selectedIndex = state.selectedItemIndex;
              return FractionallySizedBox(
                heightFactor: 0.82,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 20, bottom: 20),
                      child: Text(
                        'My Card',
                        style: TextStyleApp.height20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorSourceApp.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: cartItems.length,
                        itemBuilder: (context, index) {
                          final cartItem = cartItems[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: CardItemCheckout(
                              title: cartItem.title,
                              imagePath: cartItem.imagePath,
                              price: cartItem.price,
                              imageColor: cartItem.imageColor,
                            ),
                          );
                        },
                      ),
                    ),
                    const MenuItemFooter(),
                  ],
                ),
              );
            },
            listener: (context, state) {
              // This listener is triggered whenever the state changes.
              // You can add any necessary actions here.
            },
          ),
        ),
      ),
    );
  }
}
