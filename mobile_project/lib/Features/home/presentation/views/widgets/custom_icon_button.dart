import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 25,
            ),
          ),
          SizedBox(width: 10.w),
          Icon(
            Icons.settings,
            color: kWhiteColor,
          ),
        ],
      ),
    );
  }
}
