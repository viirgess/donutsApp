import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/service/locator.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemCheckout extends StatelessWidget {
  final String title;
  final String imagePath;
  final String price;
  final Color imageColor;
  final ItemDescription currentItemData;
  final int counter;

  const CardItemCheckout({
    super.key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.imageColor,
    required this.currentItemData,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddItemToBusketCubit>(
      create: (context) => locator<AddItemToBusketCubit>(),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.28,
          motion: const ScrollMotion(),
          children: [
            CustomSlidableAction(
              onPressed: (BuildContext context) {
                final currentItem = locator<AddItemToBusketCubit>()
                    .removeFromCart(currentItemData);
                debugPrint('Removed to Cart: ${currentItemData.title}');
              },
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset(
                'images/remove_icon.svg',
                height: 40,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            decoration: BoxDecoration(
              color: ColorSourceApp.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
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
                          color: imageColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            imagePath,
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, top: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    title,
                                    style: TextStyleApp.height24.copyWith(
                                      color: ColorSourceApp.black,
                                      fontSize: 19,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  price,
                                  style: TextStyleApp.lato.copyWith(
                                    color: ColorSourceApp.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ColorSourceApp.lightBlue,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<AddItemToBusketCubit>()
                                            .incrementCounter();
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '$counter',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  // Text(
                                  //   'price',
                                  //   style: TextStyleApp.lato.copyWith(
                                  //     color: ColorSourceApp.black,
                                  //     fontSize: 15,
                                  //   ),
                                  // ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ColorSourceApp.lightPurple,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<AddItemToBusketCubit>()
                                            .decrementCounter();
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.remove,
                                          color: ColorSourceApp.darkBlue,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
