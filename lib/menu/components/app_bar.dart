import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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
                    scaffoldKey.currentState?.openDrawer();
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
    );
  }
}
