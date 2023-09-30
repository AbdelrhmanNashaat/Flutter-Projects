import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/widgets/text_poppins.dart';
import 'package:movies_app/features/home/presentaion/views/widgets/line_widget.dart';
import 'package:movies_app/features/movies/presentaion/views/widgets/text_navigate.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import 'widgets/movie_details.dart';
import 'widgets/movie_name.dart';
import 'widgets/paly_icon.dart';

class ReviewsViewBody extends StatelessWidget {
  const ReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStackWidget();
  }
}

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsData.backgroundImage,
          scale: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 326),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: kContainerColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  MovieName(),
                  SizedBox(height: 5),
                  MoviesDetails(),
                  SizedBox(height: 14),
                  TextNavigate(),
                  ReviewsWidget(),
                ],
              ),
            ),
          ),
        ),
        const PlayIconWidget(),
      ],
    );
  }
}

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LineWidget(paddingLeft: 85, paddingRight: 180),
        SizedBox(height: 12),
        ReviewComment(),
        SizedBox(height: 25),
        ReviewComment(),
      ],
    );
  }
}

class ReviewComment extends StatelessWidget {
  const ReviewComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(
                AssetsData.avatar,
                scale: 0.4,
              ),
            ),
            const SizedBox(height: 20),
            const TextPoppins(
              text: '6.3',
              size: 16,
              fontWeight: FontWeight.w500,
              color: kReviewText,
            ),
          ],
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            TextPoppins(
              text: 'Iqbal Shafiq Rozaan',
              size: 14,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            TextPoppins(
              text:
                  'From DC Comics comes the Suicide Squad,\n an antihero team of incarcerated\n supervillains who act as deniable assets for\n the United States government.',
              size: 12,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
