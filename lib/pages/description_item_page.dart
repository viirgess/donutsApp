import 'package:app/components/item_description_card.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:app/components/add_topings_item.dart';
import 'package:app/components/button_busket.dart';
import 'package:app/widgets/grid_item_description.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/item_details/cubit/item_details_cubit.dart';

class DescriptionItem extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color containerColor;

  const DescriptionItem({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ItemDetailsCubit>(
        create: (context) => ItemDetailsCubit(),
        child: Column(
          children: [
            const GridImemDescription(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/menu.png',
                      height: 39,
                    ),
                    Text(
                      'Item Details',
                      style: TextStyleApp.lato.copyWith(
                          color: ColorSourceApp.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Image.asset(
                      'images/person.png',
                      height: 28,
                    ),
                  ],
                ),
              ),
            ),
            const GridImemDescription(),
            Container(
              color: containerColor,
              child: ItemDescriptionCard(
                title: title,
                description: description,
                imagePath: imagePath,
              ),
            ),
            const GridImemDescription(),
            const AddToppingsItem(),
            const GridImemDescription(),
            BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
              builder: (context, state) {
                return Container(
                  color: ColorSourceApp.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    child: ButtonAddToBusketItem(
                      totalPrice: state.totalPrice,
                    ),
                  ),
                );
              },
            ),
            const GridImemDescription(),
          ],
        ),
      ),
    );
  }
}
