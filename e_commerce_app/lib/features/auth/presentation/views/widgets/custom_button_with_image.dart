import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import 'custom_row_icon_and_title.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String imagePath;
  final String text;
  const CustomButtonWithIcon({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: kStandardGrayColor),
        borderRadius: BorderRadius.circular(20.0).r,
      ),
      child: CustomRowIconAndTitle(imagePath: imagePath, text: text),
    );
  }
}
