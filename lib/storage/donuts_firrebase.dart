import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> addFakeDataToFirebase() async {
  try {
    await Firebase.initializeApp();
    final CollectionReference itemsCollection =
        FirebaseFirestore.instance.collection('Donuts');

    for (final item in ItemMenuFakeData.FakeDataItemMenu) {
      final existingItem =
          await itemsCollection.where('title', isEqualTo: item.title).get();

      if (existingItem.docs.isEmpty) {
        await itemsCollection.add({
          'title': item.title,
          'description': item.description,
          'imagePath': item.imagePath,
          'imageColor': item.imageColor.toString(),
          'price': item.price,
          'buttonColor': item.buttonColor.toString(),
        });
        print('Data added to Firestore for: ${item.title}');
      } else {
        print('Data for ${item.title} already exists in Firestore. Skipped.');
      }
    }
    print('Data added to Firestore successfully.');
  } catch (e) {
    print('Error adding data to Firestore: $e');
  }
}
