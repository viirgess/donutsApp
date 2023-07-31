import 'package:flutter/material.dart';

class GridFirstPage extends StatelessWidget {
  const GridFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.8),
            ),
            height: 67,
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
