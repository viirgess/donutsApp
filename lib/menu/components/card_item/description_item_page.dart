import 'package:app/menu/components/menu_card_items/card_items_modal_sheet.dart';
import 'package:app/menu/cubit/item_detail_cubit/item_details_cubit.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:app/menu/widget/add_topings_item.dart';
import 'package:app/menu/widget/button_busket.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: ColorSourceApp.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: ColorSourceApp.black,
              ),
              onPressed: () {
                showModalBottomSheet(
                  barrierColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const CardModalSheet();
                  },
                );
              },
            ),
          ],
        ),
        toolbarHeight: 40,
        backgroundColor: ColorSourceApp.white,
      ),

      backgroundColor: containerColor,
      // appBar: AppBarMenu(),
      body: BlocProvider<ItemDetailsCubit>(
        create: (context) => ItemDetailsCubit(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorSourceApp.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(180),
                  bottomLeft: Radius.circular(180),
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
                padding: const EdgeInsets.only(bottom: 25, top: 20),
                child: Image.asset(
                  imagePath,
                  height: 220,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyleApp.height24.copyWith(
                      color: ColorSourceApp.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        color: ColorSourceApp.grey, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const AddToppingsItem(),
            BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
              builder: (context, state) {
                return Container(
                  color: ColorSourceApp.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 50),
                    child: ButtonAddToBusketItem(
                      totalPrice: state.totalPrice,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
