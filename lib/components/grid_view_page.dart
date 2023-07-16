import 'package:flutter/material.dart';

class GridViewNumberPage extends StatelessWidget {
  const GridViewNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      children: List.generate(6, (index) {
        return Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 0.5),
          ),
        );
      }),
    );
  }
}
