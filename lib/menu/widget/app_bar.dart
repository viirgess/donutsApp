import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMenu({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);
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
          color: Colors.black, // Replace this with your desired border color
          width: 2.0, // Replace this with your desired border width
        ),
      ),
      backgroundColor: ColorSourceApp.brightPink,
      toolbarHeight: 80,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.drag_handle,
                  color: ColorSourceApp.white,
                ),
                onPressed: () {},
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
        ],
      ),
    );
  }
}
