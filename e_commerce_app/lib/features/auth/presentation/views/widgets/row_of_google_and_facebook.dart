import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_button_with_image.dart';
class RowOfGoogleAndFacebook extends StatelessWidget {
  const RowOfGoogleAndFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButtonWithIcon(
          imagePath: AssetsData.facebookLogo,
          text: 'Facebook',
        ),
        SizedBox(width: 6.w),
        const CustomButtonWithIcon(
          imagePath: AssetsData.googleLogo,
          text: 'Google',
        ),
      ],
    );
  }
}
