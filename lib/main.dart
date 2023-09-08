import 'package:app/service/locator.dart';
import 'package:app/storage/donuts_firrebase.dart';
import 'package:app/storage/toppings_firebase.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'cubit/autho/auth_cubit.dart';
import 'firebase_options.dart';
import 'menu/components/card_item/description_item_page.dart';
import 'menu/menu_page_main.dart';
import 'menu/widget/add_topings_item.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await addFakeDataToFirebase();
  await addToppingsToFirebase();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setup();

  final authCubit = locator<AuthCubit>();
  authCubit.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPageMain(),
      //home: FirstScreenPage(),
    ),
  );
}
