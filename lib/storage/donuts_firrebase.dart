import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> addFakeDataToFirebase() async {
  try {
    await Firebase.initializeApp();
    final CollectionReference itemsCollection =
        FirebaseFirestore.instance.collection('Donuts');

    QuerySnapshot existingData = await itemsCollection.get();
    if (existingData.docs.isEmpty) {
      for (final item in ItemMenuFakeData.FakeDataItemMenu) {
        await itemsCollection.add({
          'title': item.title,
          'description': item.description,
          'imagePath': item.imagePath,
          'imageColor': item.imageColor.toString(),
          'price': item.price,
          'buttonColor': item.buttonColor.toString(),
        });
      }
      print('Data added to Firestore successfully.');
    } else {
      print('Data already exists in Firestore. No action taken.');
    }
  } catch (e) {
    print('Error adding data to Firestore: $e');
  }
}
