import 'package:app/pages/menu_page.dart';
import 'package:flutter/material.dart';

import '../utils/color_source.dart';

class ButtonAppDonuts extends StatelessWidget {
  const ButtonAppDonuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ColorSourceApp.black,
          width: 1.5,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: ColorSourceApp.yellow,
            width: 2.5,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: ColorSourceApp.black,
              width: 1.0,
            ),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
              debugPrint('Received click');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 3,
                ),
                Text('Visit Shop',
                    style: TextStyle(color: ColorSourceApp.black)),
                SizedBox(
                  width: 3,
                ),
                Icon(Icons.arrow_right_alt_outlined,
                    color: ColorSourceApp.black)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
