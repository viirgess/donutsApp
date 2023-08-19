import 'package:app/utils/color_source.dart';
import 'package:flutter/material.dart';

class TextFormFieldProfile extends StatelessWidget {
  final String? initialValue;
  final Widget? prefixIcon;
  final bool enabled;

  const TextFormFieldProfile(
      {super.key,
      required this.initialValue,
      required this.prefixIcon,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        style: const TextStyle(
          color: ColorSourceApp.black,
        ),
        enabled: enabled,
        initialValue: initialValue,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: ColorSourceApp.black,
          contentPadding: const EdgeInsets.only(
            top: 13, // Adjust the top padding value as needed
          ),
        ),
      ),
    );
  }
}
