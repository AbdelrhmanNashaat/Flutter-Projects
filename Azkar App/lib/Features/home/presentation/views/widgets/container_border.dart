import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class ContainerBorder extends StatelessWidget {
  final Widget? widget;
  const ContainerBorder({
    Key? key,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity.sw,
        height: double.infinity.sh,
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
        ),
        child: widget,
      ),
    );
  }
}
