import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'line_widget.dart';
class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LineWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('Or', style: Styles.textStyle13),
        ),
        const LineWidget(),
      ],
    );
  }
}