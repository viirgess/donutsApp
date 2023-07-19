import 'package:app/pages/description_item_page.dart';
import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class ButtonAddItem extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color buttonColor;
  final Color containerColor;
  const ButtonAddItem({
    super.key,
    required this.buttonColor,
    required this.title,
    required this.description,
    required this.imagePath, required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 40,
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
                borderRadius: BorderRadius.circular(30), color: buttonColor),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DescriptionItem(
                      title: title,
                      description: description,
                      imagePath: imagePath,
                      containerColor: containerColor,
                    ),
                  ),
                );
                debugPrint('Received click');
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: ColorSourceApp.black,
                    size: 17,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
