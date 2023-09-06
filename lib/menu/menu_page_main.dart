import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/menu/components/app_bar.dart';
import 'package:app/menu/cubit/navigation_cubit/navigation_menu_cubit.dart';
import 'package:app/menu/widget/card_menu_item.dart';
import 'package:app/model/items_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/card_item/description_item_page.dart';
import 'components/menu_drawer/drawer.dart';

class MenuPageMain extends StatelessWidget {
  static Color parseColor(String colorString) {
    try {
      final hexColor =
          colorString.replaceAll("Color(0x", "").replaceAll(")", "");
      final int value = int.parse(hexColor, radix: 16);
      return Color(value);
    } catch (e) {
      print('Error parsing color: $e');
      return Colors.transparent;
    }
  }

  MenuPageMain({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
        drawer: BlocProvider<RegisterPageCubit>(
          create: (context) => RegisterPageCubit(),
          child: BlocBuilder<RegisterPageCubit, RegisterPageState>(
            builder: (context, state) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.60,
                child: const Drawer(
                  child: DrawerMenu(),
                ),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: BlocProvider<NavigationMenuCubit>(
            create: (context) => NavigationMenuCubit(),
            child: BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
              builder: (context, state) {
                Future<List<MenuItem>> fetchMenuItems() async {
                  try {
                    final QuerySnapshot querySnapshot = await FirebaseFirestore
                        .instance
                        .collection('Donuts')
                        .get();

                    return querySnapshot.docs.map((doc) {
                      final data =
                          doc.data() as Map<String, dynamic>; // Explicit cast

                      final title = data.containsKey('title')
                          ? data['title'] as String
                          : '';
                      final description = data.containsKey('description')
                          ? data['description'] as String
                          : '';
                      final imagePath = data.containsKey('imagePath')
                          ? data['imagePath'] as String
                          : '';
                      final imageColorHex = data.containsKey('imageColor')
                          ? data['imageColor'] as String
                          : '';
                      final price = data.containsKey('price')
                          ? data['price'] as String
                          : '';
                      final buttonColorHex = data.containsKey('buttonColor')
                          ? data['buttonColor'] as String
                          : '';

                      final imageColor = parseColor(imageColorHex);
                      final buttonColor = parseColor(buttonColorHex);

                      return MenuItem(
                        title: title,
                        description: description,
                        imagePath: imagePath,
                        imageColor: imageColor,
                        price: price,
                        buttonColor: buttonColor,
                      );
                    }).toList();
                  } catch (e, stackTrace) {
                    print('Error fetching menu items: $e');
                    print('Stack trace: $stackTrace');
                    return []; // Return an empty list on error
                  }
                }

                return FutureBuilder<List<MenuItem>>(
                  future: fetchMenuItems(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError || !snapshot.hasData) {
                      return const Text('Error loading menu items');
                    } else {
                      final menuItems = snapshot.data!;

                      return Column(
                        children: [
                          for (int index = 0; index < menuItems.length; index++)
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<NavigationMenuCubit>()
                                    .selectItem(index);
                                final selectedItem = menuItems[index];
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DescriptionItem(
                                      title: selectedItem.title,
                                      description: selectedItem.description,
                                      imagePath: selectedItem.imagePath,
                                      containerColor: selectedItem.imageColor,
                                    ),
                                  ),
                                );
                              },
                              child: CardMenuItem(
                                title: menuItems[index].title,
                                description: menuItems[index].description,
                                imagePath: menuItems[index].imagePath,
                                price: menuItems[index].price,
                                imageColor: menuItems[index].imageColor,
                              ),
                            ),
                        ],
                      );
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
