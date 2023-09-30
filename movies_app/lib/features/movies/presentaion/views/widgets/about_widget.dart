import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';
import '../../../../home/presentaion/views/widgets/line_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LineWidget(paddingLeft: 0, paddingRight: 285),
        const SizedBox(height: 12),
        const TextPoppins(
            text:
                'Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.',
            size: 12,
            fontWeight: FontWeight.w400),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsData.image1),
            Image.asset(AssetsData.image2),
          ],
        ),
        const SizedBox(height: 6),
        const TextPoppins(
            text:
                'Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet',
            size: 12,
            fontWeight: FontWeight.w400),
      ],
    );
  }
}
