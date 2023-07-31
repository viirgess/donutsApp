import 'package:flutter/material.dart';
import '../widgets/buttons_app.dart';
import '../widgets/grid_first_page.dart';

import '../widgets/text.dart';

class FirstScreenPage extends StatelessWidget {
  const FirstScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GridFirstPage(),
          const GridFirstPage(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            height: 260,
            child: const Column(
              children: [
                TextTitleDonuts(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonAppDonuts(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const GridFirstPage(),
          Container(
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      color: Colors.white,
                      width: 200,
                      child: Image.asset('images/donuts.png', height: 110),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Expanded(
                      child: Container(
                        // width: 290,
                        // height: 336,
                        color: Colors.white,
                        child: Image.asset(
                          'images/wallpaper.png',
                          // width: 360,
                          // height: 390.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
