import 'dart:async';

import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../autho/login/login_page.dart';

import '../utils/title.dart';

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
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 130,
            child: Column(
              children: [
                const TextTitleDonuts(),
                Text(
                  'DONUT WORRY BE HAPPY',
                  style: TextStyleApp.height16
                      .copyWith(color: ColorSourceApp.darkGrey),
                ),
              ],
            ),
          ),
          //const GridFirstPage(),
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
            height: 70,
          ),
        ],
      ),
    );
  }
}
