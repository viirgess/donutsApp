import 'dart:ui';

import 'package:app/menu/components/menu_card_items/card_item_checkout.dart';
import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/service/locator.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/items_menu.dart';
import 'menu_footer_item.dart';

class CardModalSheet extends StatelessWidget {
  const CardModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<AddItemToBusketCubit>(),
      child: BackdropFilter(
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
          child: BlocConsumer<AddItemToBusketCubit, AddItemToBusketState>(
            builder: (context, state) {
              final cartItems = state.cartItems;
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
                          final cartItem = cartItems.keys.elementAt(index);

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: CardItemCheckout(
                              title: cartItem.title ?? '',
                              imagePath: cartItem.imagePath ?? '',
                              price: cartItem.price ?? '',
                              imageColor:
                                  cartItem.imageColor ?? Colors.transparent,
                              currentItemData: cartItem,
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
            listener: (_, __) {},
          ),
        ),
      ),
    );
  }
}
