import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class CardMenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final Color imageColor;

  const CardMenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: ColorSourceApp.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Spacer(),
            Container(
              decoration: BoxDecoration(
                color: imageColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  imagePath,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            Spacer(),
            // const SizedBox(
            //   width: 5,
            // ),
            Column(
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    title,
                    style: TextStyleApp.height24.copyWith(
                      color: ColorSourceApp.black,
                      fontSize: 19,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    description,
                    style: const TextStyle(
                        color: ColorSourceApp.grey, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          price,
                          style: TextStyleApp.lato.copyWith(
                            color: ColorSourceApp.black,
                            fontSize: 15,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.shopping_cart_outlined,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
