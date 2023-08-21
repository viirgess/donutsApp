import 'package:app/utils/color_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/items_menu.dart';

class ItemMenuFakeData {
  static List<ItemDescription> FakeDataItemMenu = [
    ItemDescription(
        title: 'SPRINKLE-TOPPED BLUE CREAM DREAM',
        description:
            'A soft, fluffy pastry filled with rich blue cream and topped with colorful sweetness',
        imagePath: 'images/dark_blue_donuts.png',
        imageColor: ColorSourceApp.lightBlue,
        price: '\$12,55',
        buttonColor: ColorSourceApp.blue),
    ItemDescription(
        title: 'STRAWBERRY SPRINKLE SENSATIO',
        description:
            'A juicy, glazzd pastry that will satisfy your sweet tooth with every bite.',
        imagePath: 'images/pink_donuts.png',
        imageColor: ColorSourceApp.lightPink,
        price: '\$9.99',
        buttonColor: ColorSourceApp.pink),
    ItemDescription(
      title: 'MATCHA BLISS DONUT',
      description:
          'A delicate pastry infused with the vibrant flavor of matcha green tea.',
      imagePath: 'images/green_donuts.png',
      imageColor: ColorSourceApp.lightGreen,
      price: '\$16.99',
      buttonColor: ColorSourceApp.lightGreen,
    ),
    ItemDescription(
        title: 'HAZELNUT DELIGHT SPREAD',
        description:
            'A hazelnut cream filling and coated with a delicious hazelnut glaze.',
        imagePath: 'images/brown_donuts.png',
        imageColor: ColorSourceApp.lightBrown,
        price: '\$8.99',
        buttonColor: ColorSourceApp.brown),
    ItemDescription(
        title: 'HAZELNUT DELIGHT SPREAD',
        description:
            'A hazelnut cream filling and coated with a delicious hazelnut glaze.',
        imagePath: 'images/brown_donuts.png',
        imageColor: ColorSourceApp.lightBrown,
        price: '\$11.99',
        buttonColor: ColorSourceApp.brown),
    ItemDescription(
      title: 'MATCHA BLISS DONUT',
      description:
          'A delicate pastry infused with the vibrant flavor of matcha green tea.',
      imagePath: 'images/green_donuts.png',
      imageColor: ColorSourceApp.lightGreen,
      price: '\$12.99',
      buttonColor: ColorSourceApp.lightGreen,
    ),
    ItemDescription(
        title: 'STRAWBERRY SPRINKLE SENSATIO',
        description:
            'A juicy, glazzd pastry that will satisfy your sweet tooth with every bite.',
        imagePath: 'images/pink_donuts.png',
        price: '\$10.99',
        imageColor: ColorSourceApp.lightPink,
        buttonColor: ColorSourceApp.pink),
  ];
}

void addItemsToFirestore() async {
  CollectionReference donutsCollection =
      FirebaseFirestore.instance.collection('Donuts');

  for (ItemDescription item in ItemMenuFakeData.FakeDataItemMenu) {
    try {
      DocumentReference docRef = await donutsCollection.add({
        'title': item.title,
        'description': item.description,
        'price': item.price,
      });
      print('Item ${item.title} added with ID: ${docRef.id}');
    } catch (e) {
      print('Error adding item ${item.title}: $e');
    }
  }
}
