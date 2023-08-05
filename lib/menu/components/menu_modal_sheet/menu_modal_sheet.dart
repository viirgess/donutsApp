import 'package:flutter/material.dart';

class MenuModalSheet extends StatelessWidget {
  const MenuModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          color: Colors.amber,
        ),
      ),
    );
    // return FractionallySizedBox(
    //   alignment: Alignment.centerLeft,
    //   heightFactor: 5,
    //   widthFactor: 0.6,
    //   child: Container(
    //     color: Colors.red,
    //   ),
    // );
  }
}
