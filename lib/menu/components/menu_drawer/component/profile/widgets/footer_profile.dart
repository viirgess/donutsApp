import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class FooterProfile extends StatelessWidget {
  const FooterProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorSourceApp.backgroundWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: const Offset(0, -3),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 20, top: 40, bottom: 40, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.logout,
                  color: ColorSourceApp.vine,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Log out?',
                  style: TextStyle(color: ColorSourceApp.black, fontSize: 17),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.delete_outlined,
                  color: ColorSourceApp.vine,
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Delete account?',
                  style: TextStyle(
                    color: ColorSourceApp.black,
                    fontSize: 17,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
