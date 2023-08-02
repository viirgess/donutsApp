import 'package:app/components/card_menu_item.dart';
import 'package:app/components/fake_data/item_menu_fake_data.dart';
import 'package:app/menu/widget/app_bar.dart';
import 'package:app/pages/description_item_page.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class MenuPageMain extends StatelessWidget {
  const MenuPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBarMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Craving Some Donuts?',
                  style: TextStyleApp.height15Bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionItem(
                        title: ItemMenuFakeData.FakeDataItemMenu[0].title,
                        description:
                            ItemMenuFakeData.FakeDataItemMenu[0].description,
                        imagePath:
                            ItemMenuFakeData.FakeDataItemMenu[0].imagePath,
                        containerColor:
                            ItemMenuFakeData.FakeDataItemMenu[0].imageColor,
                      ),
                    ),
                  );
                },
                child: CardMenuItem(
                  title: ItemMenuFakeData.FakeDataItemMenu[0].title,
                  description: ItemMenuFakeData.FakeDataItemMenu[0].description,
                  imagePath: ItemMenuFakeData.FakeDataItemMenu[0].imagePath,
                  price: ItemMenuFakeData.FakeDataItemMenu[0].price,
                  imageColor: ItemMenuFakeData.FakeDataItemMenu[0].imageColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionItem(
                        title: ItemMenuFakeData.FakeDataItemMenu[1].title,
                        description:
                            ItemMenuFakeData.FakeDataItemMenu[1].description,
                        imagePath:
                            ItemMenuFakeData.FakeDataItemMenu[1].imagePath,
                        containerColor:
                            ItemMenuFakeData.FakeDataItemMenu[1].imageColor,
                      ),
                    ),
                  );
                },
                child: CardMenuItem(
                  title: ItemMenuFakeData.FakeDataItemMenu[1].title,
                  description: ItemMenuFakeData.FakeDataItemMenu[1].description,
                  imagePath: ItemMenuFakeData.FakeDataItemMenu[1].imagePath,
                  price: ItemMenuFakeData.FakeDataItemMenu[1].price,
                  imageColor: ItemMenuFakeData.FakeDataItemMenu[1].imageColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionItem(
                        title: ItemMenuFakeData.FakeDataItemMenu[2].title,
                        description:
                            ItemMenuFakeData.FakeDataItemMenu[2].description,
                        imagePath:
                            ItemMenuFakeData.FakeDataItemMenu[2].imagePath,
                        containerColor:
                            ItemMenuFakeData.FakeDataItemMenu[2].imageColor,
                      ),
                    ),
                  );
                },
                child: CardMenuItem(
                  title: ItemMenuFakeData.FakeDataItemMenu[2].title,
                  description: ItemMenuFakeData.FakeDataItemMenu[2].description,
                  imagePath: ItemMenuFakeData.FakeDataItemMenu[2].imagePath,
                  price: ItemMenuFakeData.FakeDataItemMenu[2].price,
                  imageColor: ItemMenuFakeData.FakeDataItemMenu[2].imageColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionItem(
                        title: ItemMenuFakeData.FakeDataItemMenu[3].title,
                        description:
                            ItemMenuFakeData.FakeDataItemMenu[3].description,
                        imagePath:
                            ItemMenuFakeData.FakeDataItemMenu[3].imagePath,
                        containerColor:
                            ItemMenuFakeData.FakeDataItemMenu[3].imageColor,
                      ),
                    ),
                  );
                },
                child: CardMenuItem(
                  title: ItemMenuFakeData.FakeDataItemMenu[3].title,
                  description: ItemMenuFakeData.FakeDataItemMenu[3].description,
                  imagePath: ItemMenuFakeData.FakeDataItemMenu[3].imagePath,
                  price: ItemMenuFakeData.FakeDataItemMenu[3].price,
                  imageColor: ItemMenuFakeData.FakeDataItemMenu[3].imageColor,
                ),
              ),
              CardMenuItem(
                title: ItemMenuFakeData.FakeDataItemMenu[3].title,
                description: ItemMenuFakeData.FakeDataItemMenu[3].description,
                imagePath: ItemMenuFakeData.FakeDataItemMenu[3].imagePath,
                price: ItemMenuFakeData.FakeDataItemMenu[3].price,
                imageColor: ItemMenuFakeData.FakeDataItemMenu[3].imageColor,
              ),
              CardMenuItem(
                title: ItemMenuFakeData.FakeDataItemMenu[3].title,
                description: ItemMenuFakeData.FakeDataItemMenu[3].description,
                imagePath: ItemMenuFakeData.FakeDataItemMenu[3].imagePath,
                price: ItemMenuFakeData.FakeDataItemMenu[3].price,
                imageColor: ItemMenuFakeData.FakeDataItemMenu[3].imageColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
