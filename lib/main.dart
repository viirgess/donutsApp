import 'package:app/pages/first_screen_page.dart';
import 'package:app/service/locator.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'cubit/auth/auth_cubit.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();

  final authCubit = locator<AuthCubit>();
  authCubit.init();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstScreenPage(),
  ));
}
