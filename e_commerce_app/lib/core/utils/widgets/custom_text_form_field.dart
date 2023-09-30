import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final Function(String)? onChanged;
  const CustomTextFormFiled({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIconColor: kStandardGrayColor,
        prefixIconColor: kStandardGrayColor,
        hintStyle: Styles.textStyle13.copyWith(
          color: kStandardGrayColor,
        ),
        labelStyle: Styles.textStyle13.copyWith(
          color: kStandardGrayColor,
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        width: 1,
        color: kGray100Color,
      ),
    );
  }
}
