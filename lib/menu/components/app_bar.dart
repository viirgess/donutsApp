import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_title_menu.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft:
              Radius.elliptical(MediaQuery.of(context).size.width, 15.0),
          bottomRight:
              Radius.elliptical(MediaQuery.of(context).size.width, 90.0),
        ),
        // side: const BorderSide(
        //   color: Colors.black,
        //   width: 1.0,
        // ),
      ),
      backgroundColor: ColorSourceApp.pink,
      title: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.drag_handle,
                      color: ColorSourceApp.white,
                    ),
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  const TitleMenu(),
                  Badge(
                    // backgroundColor: Colors.green,
                    backgroundColor: Colors.red.shade900,
                    smallSize: 12,
                    alignment: Alignment.topRight,
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
