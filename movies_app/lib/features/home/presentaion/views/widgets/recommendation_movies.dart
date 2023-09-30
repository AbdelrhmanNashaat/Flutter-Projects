import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';

class RecommendationMovies extends StatelessWidget {
  const RecommendationMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextPoppins(
              text: 'Recommended for you',
              size: 16,
              fontWeight: FontWeight.w500),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AssetsData.movie4,
              ),
              Image.asset(
                AssetsData.movie5,
              ),
              Image.asset(
                AssetsData.movie6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
