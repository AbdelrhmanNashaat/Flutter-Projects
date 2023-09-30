import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_card_widget.dart';

final controller = PageController();

class CustomListViewOfImages extends StatelessWidget {
  const CustomListViewOfImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 350,
          child: ListView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(AssetsData.movie2),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: CustomCardWidget(),
              ),
              Image.asset(AssetsData.movie3),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const WormEffect(
            dotWidth: 8.0,
            dotHeight: 8.0,
            activeDotColor: kWhiteColor,
            dotColor: kGrayColor,
          ),
        ),
      ],
    );
  }
}
