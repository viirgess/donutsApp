import 'package:app/components/card_menu_item.dart';
import 'package:app/pages/order_check.dart';
import 'package:app/pages/profile.dart';
import 'package:app/widgets/button_add_item.dart';
import 'package:app/widgets/grid_menu_item.dart';
import 'package:app/widgets/search_field.dart';
import 'package:flutter/material.dart';

import '../components/fake_data/item_menu_fake_data.dart';
import '../widgets/grid_first_page.dart';
import 'description_item_page.dart';

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
          const GridFirstPage(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderCheck(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/menu.png',
                      height: 39,
                    ),
                  ),
                  SearchWidget(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/person.png',
                      height: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //const GridMenuItem(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: ItemMenuFakeData.FakeDataItemMenu.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionItem(
                              title: ItemMenuFakeData
                                  .FakeDataItemMenu[index].title,
                              description: ItemMenuFakeData
                                  .FakeDataItemMenu[index].description,
                              imagePath: ItemMenuFakeData
                                  .FakeDataItemMenu[index].imagePath,
                              containerColor: ItemMenuFakeData
                                  .FakeDataItemMenu[index].backgroundColor,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        color: ItemMenuFakeData
                            .FakeDataItemMenu[index].backgroundColor,
                        child: Row(
                          children: [
                            CardMenuItem(
                              title: ItemMenuFakeData
                                  .FakeDataItemMenu[index].title,
                              description: ItemMenuFakeData
                                  .FakeDataItemMenu[index].description,
                              imagePath: ItemMenuFakeData
                                  .FakeDataItemMenu[index].imagePath,
                            ),
                            ButtonAddItem(
                              buttonColor: ItemMenuFakeData
                                  .FakeDataItemMenu[index].buttonColor,
                              title: ItemMenuFakeData
                                  .FakeDataItemMenu[index].title,
                              description: ItemMenuFakeData
                                  .FakeDataItemMenu[index].description,
                              imagePath: ItemMenuFakeData
                                  .FakeDataItemMenu[index].imagePath,
                              containerColor: ItemMenuFakeData
                                  .FakeDataItemMenu[index].backgroundColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const GridMenuItem(), // Add GridMenuItem here as a child of the Column
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
