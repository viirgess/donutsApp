import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

enum ButtonStatus { loading, active, unActive }

class ButtonNext extends StatelessWidget {
  final ButtonStatus status;
  final Function callBack;
  final bool isEnable;
  const ButtonNext({
    super.key,
    required this.callBack,
    required this.isEnable,
    this.status = ButtonStatus.active,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => status == ButtonStatus.loading
          ? null
          : isEnable
              ? callBack()
              : null,
      child: Container(
        decoration: BoxDecoration(
          // color: isEnable ? ColorSource.black : ColorSource.grey,
          borderRadius: BorderRadius.circular(20),
          gradient: ColorSourceApp.pinkGradient,
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
          child: Icon(
            Icons.arrow_forward,
            color: ColorSourceApp.white,
            size: 26,
          ),
        ),
      ),
    );
  }
}
//Icons.arrow_forward,
