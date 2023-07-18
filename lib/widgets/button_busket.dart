import 'package:app/pages/menu_page.dart';
import 'package:flutter/material.dart';

import '../utils/color_source.dart';

class ButtonAddToBusketItem extends StatelessWidget {
  const ButtonAddToBusketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
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
            color: ColorSourceApp.white,
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
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.amber, ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
                debugPrint('Received click');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(
                    Icons.shopping_basket_outlined,
                    color: ColorSourceApp.black,
                    size: 17,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Add to Card ',
                      style: TextStyle(color: ColorSourceApp.black)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('\$3.95',
                      style: TextStyle(color: ColorSourceApp.black)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
