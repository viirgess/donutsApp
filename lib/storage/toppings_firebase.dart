import 'package:app/menu/fake_data/fake_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> addToppingsToFirebase() async {
  try {
    await Firebase.initializeApp();

    final CollectionReference toppingsCollection =
        FirebaseFirestore.instance.collection('Toppings');

    QuerySnapshot existingData = await toppingsCollection.get();
    if (existingData.docs.isEmpty) {
      for (final topping in FakeDataMenu.fakeDataToppings) {
        await toppingsCollection.add({
          'title': topping.title,
          'toppingPrice': topping.toppingPrice,
        });
      }
      print('Toppings added to Firestore successfully.');
    } else {
      print('Toppings already exist in Firestore. No action taken.');
    }
  } catch (e) {
    print('Error adding toppings to Firestore: $e');
  }
}
