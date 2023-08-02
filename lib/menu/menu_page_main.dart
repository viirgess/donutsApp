import 'package:flutter/material.dart';

import 'card_item/card_item.dart';

class MenuPageMain extends StatelessWidget {
  const MenuPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CardItem()],
      ),
    );
  }
}
