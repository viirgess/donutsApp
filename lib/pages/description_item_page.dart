import 'package:app/components/item_description_card.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:app/widgets/add_topings_item.dart';
import 'package:app/widgets/button_busket.dart';

import 'package:flutter/material.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 55,
            child: GridView.count(
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('images/menu.png', height: 39,),
                  Text('Item Details', style: TextStyleApp.lato.copyWith(color: ColorSourceApp.black, fontWeight: FontWeight.w500, fontSize: 17),),
                  Image.asset('images/person.png', height: 28,),
                ],
              ),
            ),
          ),
          Row(
      children: [
        Expanded(
          child: Container(
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            height: 55,
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ),
          Container(
            color: ColorSourceApp.lightBlue,
            child: const ItemDescriptionCard(title: 'SPRINKLE-TOPPED BLUE CREAM DREAM',
                description:
                    'A soft, fluffy pastry filled with rich blue cream and topped with colorful sweetness',
                imagePath: 'images/dark_blue_donuts.png',),
          ),
          Row(
      children: [
        Expanded(
          child: Container(
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            height: 55,
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ),
          const AddToppingsItem(),
          Row(
      children: [
        Expanded(
          child: Container(
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            height: 55,
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ),
    Container(
      
      color:  ColorSourceApp.white,
      child: const Padding(
        
        padding: EdgeInsets.symmetric(horizontal: 30, vertical:10 ),
        child: ButtonAddToBusketItem(),
      ),
    ),
        ],
      ),
    );
  }
}