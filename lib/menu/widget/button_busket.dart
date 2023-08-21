import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/menu/menu_page_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/order_check.dart';
import '../../utils/color_source.dart';

class ButtonAddToBusketItem extends StatelessWidget {
  final double totalPrice;

  const ButtonAddToBusketItem({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddItemToBusketCubit>(
      create: (context) => AddItemToBusketCubit(),
      child: BlocBuilder<AddItemToBusketCubit, AddItemToBusketState>(
        builder: (context, state) {
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
                      addItemsToFirestore();
                      // context.read<AddItemToBusketCubit>().addToCart();
                      // debugPrint('Received click');
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
