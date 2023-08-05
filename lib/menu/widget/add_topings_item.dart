import 'package:app/menu/cubit/item_detail_cubit/item_details_cubit.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToppingsItem extends StatefulWidget {
  const AddToppingsItem({Key? key}) : super(key: key);

  @override
  State<AddToppingsItem> createState() => _AddToppingsItemState();
}

double totalPrice = 9.0;

class _AddToppingsItemState extends State<AddToppingsItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
                  child: Text(
                    'ADD TOPPINGS',
                    style: TextStyleApp.height24.copyWith(
                      color: ColorSourceApp.black,
                      fontSize: 19,
                    ),
                  ),
                ),
                ...state.toppingsList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            value: state.currentItem.contains(e),
                            onChanged: (bool? value) {
                              context
                                  .read<ItemDetailsCubit>()
                                  .manageToppings(e);
                            },
                          ),
                        ),
                        Text(
                          '${e.title}',
                          style: TextStyleApp.lato.copyWith(
                              color: ColorSourceApp.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text('+ \$' '${e.toppingPrice}'),
                        const SizedBox(width: 16),
                      ],
                    ),
                  );
                }).toList(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
