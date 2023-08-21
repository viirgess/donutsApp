import 'package:app/utils/color_source.dart';
import 'package:app/utils/title.dart';
import 'package:flutter/material.dart';

class PaymentDrowerPage extends StatelessWidget {
  const PaymentDrowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorSourceApp.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const TextTitleDonuts(),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
