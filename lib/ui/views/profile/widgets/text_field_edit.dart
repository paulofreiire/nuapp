import 'package:flutter/material.dart';

import '../../../../utils/colors_utils.dart';

class TextEditProfile extends StatelessWidget {
  final String labelText;
  final int? maxLines;
  final IconData? iconData;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const TextEditProfile(
      {super.key,
      required this.labelText,
      required this.maxLines,
      required this.iconData,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Palette.primaryColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Palette.primaryColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Palette.primaryColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Palette.primaryColor,
            width: 2,
          ),
        ),
        suffixIcon: Icon(
          iconData,
          color: Colors.grey.shade600,
        ),
        prefix: const SizedBox(
          width: 15,
        ),
      ),
      validator: validator,
    );
  }
}
