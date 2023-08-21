import 'package:cloud_firestore/cloud_firestore.dart';

class Donuts {
  final Map<String, dynamic> data;

  Donuts({required this.data});

  factory Donuts.fromJson(Map<String, dynamic> json) {
    return Donuts(data: json);
  }

  Map<String, dynamic> toJson() {
    return data;
  }
}

class Data {
  final String title;
  final String description;
  final double price;

  Data({required this.title, required this.description, required this.price});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      title: json['title'],
      description: json['description'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'price': price,
    };
  }
}

void addItemsToFirestore() async {
  CollectionReference donutsCollection =
      FirebaseFirestore.instance.collection('Donuts');

  for (Map<String, dynamic> jsonData in fakeDataItemMenuJson) {
    try {
      Data itemData = Data.fromJson(jsonData);
      DocumentReference docRef = await donutsCollection.add(itemData.toJson());
      print('Item ${itemData.title} added with ID: ${docRef.id}');
    } catch (e) {
      print('Error adding item: $e');
    }
  }
}

List<Map<String, dynamic>> fakeDataItemMenuJson = [
  {
    'title': 'SPRINKLE-TOPPED BLUE CREAM DREAM',
    'description':
        'A soft, fluffy pastry filled with rich blue cream and topped with colorful sweetness',
    'price': 12.55,
  },
  {
    'title': 'STRAWBERRY SPRINKLE SENSATIO',
    'description':
        'A juicy, glazed pastry that will satisfy your sweet tooth with every bite.',
    'price': 9.99,
  },
  // Add more items...
];
