import 'package:app/components/card_menu_item.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/widgets/button_add_item.dart';
import 'package:app/widgets/grid_menu_item.dart';
import 'package:app/widgets/search_field.dart';
import 'package:flutter/material.dart';



class MenuPage extends StatefulWidget {
  
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/menu.png', height: 39,),
                  
                  SearchWidget(),
                  Image.asset('images/person.png', height: 28,),
                ],
              ),
            ),
          ),
         const GridMenuItem(),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 1;
              });
            },
            child: Container(
              color: ColorSourceApp.lightBlue,
              child: const Row(
                children: [
                  CardMenuItem(
                    title: 'SPRINKLE-TOPPED BLUE CREAM DREAM',
                    description:
                        'A soft, fluffy pastry filled with rich blue cream and topped with colorful sweetness',
                    imagePath: 'images/dark_blue_donuts.png',
                    
                  ),
                  ButtonAddItem(buttonColor: ColorSourceApp.blue, description: 'A soft, fluffy pastry filled with rich blue cream and topped with colorful sweetness', imagePath: 'images/dark_blue_donuts.png', title: 'SPRINKLE-TOPPED BLUE CREAM DREAM', containerColor: ColorSourceApp.lightBlue,),
                ],
              ),
            ),
          ),
          const GridMenuItem(),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 2;
              });
            },
            child: Container(
              color: ColorSourceApp.lightPink,
              child: const Row(
                children: [
                  CardMenuItem(
                    title: 'STRAWBERRY SPRINKLE SENSATION',
                    description:
                        'A juicy, glazzd pastry that will satisfy your sweet tooth with every bite.',
                    imagePath: 'images/pink_donuts.png',
                  ),
                  ButtonAddItem(buttonColor: ColorSourceApp.pink, description: 'A juicy, glazzd pastry that will satisfy your sweet tooth with every bite.', imagePath: 'images/pink_donuts.png', title: 'STRAWBERRY SPRINKLE SENSATION', containerColor: ColorSourceApp.lightPink,),
                ],
              ),
            ),
          ),
          const GridMenuItem(),
           GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 3;
              });
            },
             child: Container(
              color: ColorSourceApp.lightGreen,
              child: const Row(
                children: [
                  CardMenuItem(
                    title: 'MATCHA BLISS DONUT',
                    description:
                        'A delicate pastry infused with the vibrant flavor of matcha green tea.',
                    imagePath: 'images/green_donuts.png',
                  ),
                  ButtonAddItem(buttonColor: ColorSourceApp.brightGreen, description: 'A delicate pastry infused with the vibrant flavor of matcha green tea.', imagePath: 'images/green_donuts.png', title: 'MATCHA BLISS DONUT', containerColor: ColorSourceApp.lightGreen,),
                ],
              ),
              
                     ),
           ),
           const GridMenuItem(),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 4;
              });
            },
            child: Container(
              color: ColorSourceApp.lightBrown,
              child: const Row(
                children: [
                  CardMenuItem(
                    title: 'HAZELNUT DELIGHT SPREAD',
                    description:
                        'A hazelnut cream filling and coated with a delicious hazelnut glaze.',
                    imagePath: 'images/brown_donuts.png',
                  ),
                  ButtonAddItem(buttonColor: ColorSourceApp.brown, description: 'A hazelnut cream filling and coated with a delicious hazelnut glaze.', imagePath: 'images/brown_donuts.png', title: 'HAZELNUT DELIGHT SPREAD', containerColor: ColorSourceApp.lightBrown,),
                ],
              ),
            ),
          ),
          const GridMenuItem(),
        ],
      ),
    );
  }
}
