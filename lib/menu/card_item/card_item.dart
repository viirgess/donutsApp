import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Expanded(
        child: Container(
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
          height: MediaQuery.of(context).size.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: const Text(
              'edjkhjkedfs',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
