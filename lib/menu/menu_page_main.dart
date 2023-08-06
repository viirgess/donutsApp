import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/menu/cubit/navigation_cubit/navigation_menu_cubit.dart';
import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/menu/widget/card_menu_item.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/card_item/description_item_page.dart';

class MenuPageMain extends StatelessWidget {
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.elliptical(MediaQuery.of(context).size.width, 15.0),
              bottomRight:
                  Radius.elliptical(MediaQuery.of(context).size.width, 90.0),
            ),
            side: const BorderSide(
              color: Colors.black,
              // Replace this with your desired border color
              width: 2.0, // Replace this with your desired border width
            ),
          ),
          backgroundColor: ColorSourceApp.brightPink,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.drag_handle,
                        color: ColorSourceApp.white,
                      ),
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: ColorSourceApp.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: BlocProvider<RegisterPageCubit>(
          create: (context) => RegisterPageCubit(),
          child: BlocBuilder<RegisterPageCubit, RegisterPageState>(
            builder: (context, state) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.60,
                child: Drawer(
                  child: SingleChildScrollView(
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
                  ),
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
                final selectedIndex = state.selectedItemIndex;
                final selectedItem =
                    ItemMenuFakeData.FakeDataItemMenu[selectedIndex];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Craving Some Donuts?',
                        style: TextStyleApp.height15
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (int index = 0;
                        index < ItemMenuFakeData.FakeDataItemMenu.length;
                        index++)
                      GestureDetector(
                        onTap: () {
                          context.read<NavigationMenuCubit>().selectItem(index);
                          final selectedItem =
                              ItemMenuFakeData.FakeDataItemMenu[index];
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
                          title: ItemMenuFakeData.FakeDataItemMenu[index].title,
                          description: ItemMenuFakeData
                              .FakeDataItemMenu[index].description,
                          imagePath: ItemMenuFakeData
                              .FakeDataItemMenu[index].imagePath,
                          price: ItemMenuFakeData.FakeDataItemMenu[index].price,
                          imageColor: ItemMenuFakeData
                              .FakeDataItemMenu[index].imageColor,
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
