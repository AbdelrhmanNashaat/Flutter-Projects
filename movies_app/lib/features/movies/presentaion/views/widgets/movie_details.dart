import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';
class MoviesDetails extends StatelessWidget {
  const MoviesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.ticket,
          size: 18,
          color: kWhiteColorWithOpacity1,
        ),
        SizedBox(width: 15),
        TextPoppins(
          text: 'Adventure ,Drama',
          size: 12,
          fontWeight: FontWeight.w400,
          color: kWhiteColorWithOpacity1,
        ),
        SizedBox(width: 5),
        TextPoppins(
          text: '|',
          size: 12,
          fontWeight: FontWeight.w400,
          color: kWhiteColorWithOpacity1,
        ),
        SizedBox(width: 8),
        Icon(
          FontAwesomeIcons.clock,
          size: 18,
          color: kWhiteColorWithOpacity1,
        ),
        SizedBox(width: 10),
        TextPoppins(
          text: 'Runtime : 2 h 24min',
          size: 12,
          fontWeight: FontWeight.w400,
          color: kWhiteColorWithOpacity1,
        ),
      ],
    );
  }
}