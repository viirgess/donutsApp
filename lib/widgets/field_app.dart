import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FieldApp extends StatefulWidget {
  final String labelText;
  final String svgIconPath;
  final Function(String) inputText;
  final bool isPassword;
  const FieldApp({
    super.key,
    required this.labelText,
    required this.svgIconPath,
    required this.inputText,
    required this.isPassword,
  });

  @override
  State<FieldApp> createState() => _FieldAppState();
}

class _FieldAppState extends State<FieldApp> {
  bool isShowPassword = false;

  void changePasswordState() {
    isShowPassword = !isShowPassword;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorSourceApp.veryLightGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) => (value),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          suffixIcon: widget.isPassword
              ? _SufixIcon(
                  onTap: () => changePasswordState,
                  isShowPassword: isShowPassword,
                )
              : null,
          prefixIcon: Transform.scale(
            scale: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: SvgPicture.asset(
                widget.svgIconPath,
                height: 24,
                width: 24,
              ),
            ),
          ),
          labelText: widget.labelText,
          labelStyle: TextStyleApp.height15.copyWith(
            color: ColorSourceApp.veryLightGrey,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class _SufixIcon extends StatelessWidget {
  final Function onTap;
  final bool isShowPassword;

  const _SufixIcon(
      {Key? key, required this.onTap, required this.isShowPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: isShowPassword
          ? Image.asset(
              'images/open_eye.png',
              width: 24, // Adjust width and height as needed
              height: 24,
            )
          : Image.asset(
              'images/closed_eye.png',
              width: 24, // Adjust width and height as needed
              height: 24,
            ),
    );
  }
}
