import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';
import 'check_box.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CheckBoxWidget(),
            TextPoppins(
              text: 'Remember me',
              size: 12,
              fontWeight: FontWeight.w400,
              color: kBlackColorWithOpacity1,
            ),
          ],
        ),
      ],
    );
  }
}
