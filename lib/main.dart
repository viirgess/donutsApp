import 'package:app/pages/first_screen_page.dart';
import 'package:app/locator/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cubit/autho/auth_cubit.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setup();

  final authCubit = locator<AuthCubit>();
  authCubit.init();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreenPage(),
    ),
  );
}
