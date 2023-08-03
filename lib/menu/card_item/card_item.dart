import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const CardItem(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 90,
                  height: 90,
                ),
                Text(
                  'edjkhjkedfs',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
