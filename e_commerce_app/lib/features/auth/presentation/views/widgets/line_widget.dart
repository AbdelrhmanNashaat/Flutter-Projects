import 'package:flutter/material.dart';

import '../../../../../constant.dart';
class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: kGray100Color,
        thickness: 1,
      ),
    );
  }
}