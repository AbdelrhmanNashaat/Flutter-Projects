import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/text_poppins.dart';

class TextNavigate extends StatelessWidget {
  const TextNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TextPoppins(
          text: 'About',
          size: 18,
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(width: 33),
        GestureDetector(
          onTap: () => GoRouter.of(context).push('/reviewview'),
          child: const TextPoppins(
            text: 'Reviews',
            size: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 33),
        GestureDetector(
          onTap: () => GoRouter.of(context).push('/castview'),
          child: const TextPoppins(
            text: 'Cast',
            size: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
