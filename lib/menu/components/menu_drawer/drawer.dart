import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'name',
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: ColorSourceApp.black,
                ),
                title: const Text(
                  'Settings',
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
  }
}
