import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class ButtonCart extends StatelessWidget {
  const ButtonCart({
    super.key,
  });

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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.amber,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: ColorSourceApp.black,
                    size: 17,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Order now',
                      style: TextStyle(color: ColorSourceApp.black)),
                  SizedBox(
                    width: 10,
                  ),
                  // Text('\$$totalPrice',
                  //     style:
                  //     const TextStyle(color: ColorSourceApp.black)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
