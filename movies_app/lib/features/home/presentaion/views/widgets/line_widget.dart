import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class LineWidget extends StatelessWidget {
  final double paddingLeft;
  final double paddingRight;
  const LineWidget({
    super.key, required this.paddingLeft, required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: paddingLeft, right: paddingRight),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: kWhiteColor,
              thickness: 2.3,
            ),
          ),
        ],
      ),
    );
  }
}
