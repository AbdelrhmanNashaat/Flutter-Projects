import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/widgets/text_poppins.dart';
import 'package:movies_app/features/movies/presentaion/views/widgets/text_navigate.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../home/presentaion/views/widgets/line_widget.dart';
import 'widgets/movie_details.dart';
import 'widgets/movie_name.dart';
import 'widgets/paly_icon.dart';

class CastViewBody extends StatelessWidget {
  const CastViewBody({super.key});

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
                  CastWidget(),
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

class CastWidget extends StatelessWidget {
  const CastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LineWidget(paddingLeft: 194, paddingRight: 108),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CastImage(
                image: AssetsData.cast1,
                text: 'Tom Holland',
              ),
              CastImage(
                image: AssetsData.cast2,
                text: 'Zendaya',
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CastImage(
                image: AssetsData.cast3,
                text: 'Benedict',
              ),
              CastImage(
                image: AssetsData.cast4,
                text: 'Brad Pitt',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CastImage extends StatelessWidget {
  final String image;
  final String text;
  const CastImage({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          child: Image.asset(
            image,
            scale: 0.4,
          ),
        ),
        const SizedBox(height: 12),
        TextPoppins(text: text, size: 14, fontWeight: FontWeight.w500),
      ],
    );
  }
}
