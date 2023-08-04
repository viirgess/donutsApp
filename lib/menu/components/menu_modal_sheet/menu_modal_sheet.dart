import 'package:flutter/material.dart';

class MenuModalSheet extends StatelessWidget {
  const MenuModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
