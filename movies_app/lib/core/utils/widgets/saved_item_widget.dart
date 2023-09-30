import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/constant.dart';

import '../../../features/home/presentaion/views/widgets/custom_rating_row.dart';
import 'text_poppins.dart';

class SavedItemWidget extends StatelessWidget {
  final String movieName;
  final String movieDate;
  final String movieRate;
  final String imagePath;
  const SavedItemWidget({
    super.key,
    required this.movieName,
    required this.movieDate,
    required this.movieRate,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextPoppins(
                  text: movieName, size: 16, fontWeight: FontWeight.w400),
              const SizedBox(height: 19),
              CustomRatingRow(
                movieRate: movieRate,
                icon: const Icon(
                  FontAwesomeIcons.star,
                  size: 12,
                  color: kSecondryColor,
                ),
                color: kSecondryColor,
                textSize: 12,
              ),
              const SizedBox(height: 3),
              const TextPoppins(
                text: 'Action',
                size: 12,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 3),
              TextPoppins(
                text: movieDate,
                size: 12,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 3),
              const TextPoppins(
                text: '139 Minutes',
                size: 12,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
