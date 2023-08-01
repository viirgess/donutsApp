import 'dart:async';

import 'package:app/utils/color_source.dart';
import 'package:app/utils/image_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../autho/login/login_page.dart';
import '../widgets/buttons_app.dart';
import '../widgets/grid_first_page.dart';

import '../widgets/text.dart';
import 'menu_page.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({super.key});

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GridFirstPage(),
          const GridFirstPage(),
          Container(
            height: 130,
            child: Column(
              children: [
                TextTitleDonuts(),
                Text(
                  'DONUT WORRY BE HAPPY',
                  style: TextStyleApp.height16
                      .copyWith(color: ColorSourceApp.darkGrey),
                ),
                // Center(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ButtonAppDonuts(),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          const GridFirstPage(),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(
            'images/donutTtile.svg',
            height: 240,
          ),
          const Spacer(),
          LoadingAnimationWidget.hexagonDots(
            color: ColorSourceApp.lightGrey,
            size: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Loading',
            style: TextStyleApp.height15.copyWith(
              color: ColorSourceApp.lightGrey,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //Container(
          // color: Colors.white,
          // child: Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          // children: [
          // SvgPicture.asset(ImageSource.donutTitle),
          // Expanded(
          //   flex: 2,
          //   child: Align(
          //     alignment: Alignment.bottomLeft,
          //     child: Container(
          //       color: Colors.white,
          //       width: 200,
          //       child: Image.asset('images/donuts.png', height: 110),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   flex: 6,
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //     child: Expanded(
          //       child: Container(
          //         // width: 290,
          //         // height: 336,
          //         color: Colors.white,
          //         child: Image.asset(
          //           'images/wallpaper.png',
          //           // width: 360,
          //           // height: 390.5,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // ],
          //),
          //),
        ],
      ),
    );
  }
}
