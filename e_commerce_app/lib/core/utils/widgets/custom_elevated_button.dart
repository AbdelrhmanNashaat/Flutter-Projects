import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant.dart';
import '../styles.dart';
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(kStandardYellowColor),
        fixedSize: MaterialStatePropertyAll(
          Size(342.w, 40.h),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0).r,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle24,
      ),
    );
  }
}
