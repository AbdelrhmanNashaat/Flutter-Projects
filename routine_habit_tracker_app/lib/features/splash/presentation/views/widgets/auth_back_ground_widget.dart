import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../splash_view_body.dart';

class AuthBackGroundWidget extends StatelessWidget {
  final Widget childWidget;
  const AuthBackGroundWidget({
    super.key,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.sw,
      height: double.infinity.sh,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        gradient: kBackGroundColor,
      ),
      child: Stack(
        children: [
          const CustomCircularBackground(
            opacity: 0.16,
            containerWidth: 324,
            containerHeight: 324,
          ),
          const CustomCircularBackground(
            opacity: 0.32,
            containerWidth: 208,
            containerHeight: 208,
          ),
          const CustomCircularBackground(
            opacity: 0.4,
            containerWidth: 124,
            containerHeight: 124,
          ),
          const CustomCircularBackground(
            opacity: 0.4,
            containerWidth: 48,
            containerHeight: 48,
          ),
          childWidget,
        ],
      ),
    );
  }
}
