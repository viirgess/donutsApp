import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class MenuDrawerItems extends StatelessWidget {
  MenuDrawerItems({super.key});

  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.person_outlined,
      'title': 'Profile',
    },
    {
      'icon': Icons.shopping_cart_outlined,
      'title': 'My orders',
    },
    {
      'icon': Icons.payment,
      'title': 'Payments',
    },
    {
      'icon': Icons.info_outline_rounded,
      'title': 'Info',
    },
    {
      'icon': Icons.help_outline_sharp,
      'title': 'Help',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            menuItems[index]['icon'],
            color: ColorSourceApp.black,
          ),
          title: Text(
            menuItems[index]['title'],
            style: const TextStyle(
              color: ColorSourceApp.black,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
