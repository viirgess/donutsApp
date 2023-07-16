import 'package:flutter/material.dart';
import '../widgets/buttons_app.dart';
import '../widgets/text.dart';

class FirstScreenPage extends StatelessWidget {
  const FirstScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: GridView.count(
              crossAxisCount: 6,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(12, (index) {
                return Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                );
              }),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            height: 240,
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
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  height: 68,
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
          ),
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
                      child: Image.asset('images/donuts.png', height: 130),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 290,
                      height: 316,
                      color: Colors.red,
                      child: Image.asset(
                        'images/wallpaper.png',
                        width: 360,
                        height: 316.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
