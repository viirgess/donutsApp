import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget implements PreferredSizeWidget {
  AppBarMenu({super.key});
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          alignment: Alignment.centerLeft,
          widthFactor: 0.5,
          // heightFactor: 0.9,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.tealAccent,
          ),
        );
      },
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Size get preferredSize => const Size.fromHeight(68);

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: AppBar(
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.drag_handle,
                    color: ColorSourceApp.white,
                  ),
                  onPressed: () {
                    _showModalBottomSheet(context);
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
          ],
        ),
      ),
    );
  }
}
