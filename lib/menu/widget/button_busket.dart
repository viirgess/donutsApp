import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/menu/cubit/item_detail_cubit/item_details_cubit.dart';
import 'package:app/menu/cubit/navigation_cubit/navigation_menu_cubit.dart';

import 'package:app/model/items_menu.dart';
import 'package:app/model/prices_toppings.dart';
import 'package:app/service/locator.dart';
import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonAddToBusketItem extends StatelessWidget {
  final ItemDescription currentItem;
  final double totalPrice;

  //final List<AddTopppings> selectedToppings;

  const ButtonAddToBusketItem({
    super.key,
    required this.totalPrice,
    required this.currentItem,
    //required this.selectedToppings,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationMenuCubit>(
      create: (context) => NavigationMenuCubit(),
      child: BlocBuilder<AddItemToBusketCubit, AddItemToBusketState>(
        builder: (context, state) {
          final selectedToppings =
              context.watch<ItemDetailsCubit>().state.currentItem;
          return Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: ColorSourceApp.black,
                width: 1.5,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: ColorSourceApp.white,
                  width: 2.5,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: ColorSourceApp.black,
                    width: 1.0,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber,
                  ),
                  child: TextButton(
                    onPressed: () {
                      List<AddTopppings> selectedToppingsList =
                          selectedToppings.cast<AddTopppings>();
                      currentItem.selectedToppings = selectedToppingsList;

                      context
                          .read<AddItemToBusketCubit>()
                          .addToCart(currentItem);
                      debugPrint('Added to Cart: ${currentItem.title}');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_outlined,
                          color: ColorSourceApp.black,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text('Add to Card ',
                            style: TextStyle(color: ColorSourceApp.black)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('\$$totalPrice',
                            style:
                                const TextStyle(color: ColorSourceApp.black)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
