import 'package:app/menu/components/menu_drawer/component/profile/profile.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'component/orders/order_page.dart';
import 'component/payments/payment_drower_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser?.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          final userData = snapshot.data!.data();
          final userName = userData?['name'] ?? '';
          return SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(
                            MediaQuery.of(context).size.width, 15.0),
                        bottomRight: Radius.elliptical(
                            MediaQuery.of(context).size.width, 90.0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      color: ColorSourceApp.brightPink,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Hey , ',
                          style: TextStyleApp.height15.copyWith(
                            color: ColorSourceApp.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          userName,
                          style: TextStyleApp.height15.copyWith(
                            color: ColorSourceApp.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.person_outlined,
                        color: ColorSourceApp.black,
                      ),
                      title: const Text(
                        'Profile',
                        style: TextStyle(
                          color: ColorSourceApp.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.shopping_cart_outlined,
                        color: ColorSourceApp.black,
                      ),
                      title: const Text(
                        'My orders',
                        style: TextStyle(
                          color: ColorSourceApp.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const OrderMenuPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.payment,
                        color: ColorSourceApp.black,
                      ),
                      title: const Text(
                        'Payments',
                        style: TextStyle(
                          color: ColorSourceApp.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PaymentDrowerPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.info_outline_rounded,
                        color: ColorSourceApp.black,
                      ),
                      title: const Text(
                        'Info',
                        style: TextStyle(
                          color: ColorSourceApp.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.help_outline_sharp,
                        color: ColorSourceApp.black,
                      ),
                      title: const Text(
                        'Help',
                        style: TextStyle(
                          color: ColorSourceApp.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
