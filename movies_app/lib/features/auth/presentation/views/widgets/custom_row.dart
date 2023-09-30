import 'package:flutter/material.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';
import 'custom_text_button.dart';

class CustomRow extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onPressed;
  const CustomRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextPoppins(
          text: text1,
          size: 16,
          fontWeight: FontWeight.w400,
          color: kBlackColor,
        ),
        CustomTextButton(
          text: text2,
          size: 16,
          fontWeight: FontWeight.w400,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
