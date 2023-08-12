import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/menu/components/app_bar.dart';
import 'package:app/menu/cubit/navigation_cubit/navigation_menu_cubit.dart';
import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/menu/widget/card_menu_item.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:app/utils/text_title_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/card_item/description_item_page.dart';
import 'components/menu_drawer/drawer.dart';

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
        appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
        drawer: BlocProvider<RegisterPageCubit>(
          create: (context) => RegisterPageCubit(),
          child: BlocBuilder<RegisterPageCubit, RegisterPageState>(
            builder: (context, state) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
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
                final selectedIndex = state.selectedItemIndex;
                final selectedItem =
                    ItemMenuFakeData.FakeDataItemMenu[selectedIndex];
                return Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   //child: TitleMenu(),
                    //   // Text(
                    //   //   'Craving Some Donuts?',
                    //   //   style: TextStyleApp.height20.copyWith(
                    //   //       fontWeight: FontWeight.w500,
                    //   //       color: ColorSourceApp.brightPink),
                    //   // ),
                    // ),
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
