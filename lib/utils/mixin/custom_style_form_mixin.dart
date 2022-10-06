import 'package:flutter/material.dart';

import '../utils.dart';

mixin CustomStyleFormMixin {
  InputDecoration defaultTextInputStyle({
    String? label,
    String? helperText,
    String? hintText,
    IconData? suffixIcon,
    TextStyle? textStyle,
  }) {
    return InputDecoration(
      labelStyle: const TextStyle(color: Palette.primaryColor),
      hintText: hintText,
      helperText: helperText,
      hintStyle: textStyle,
      labelText: label,
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
        suffixIcon,
        color: Colors.grey.shade600,
      ),
      prefix: const SizedBox(
        width: 15,
      ),
    );
  }
}
