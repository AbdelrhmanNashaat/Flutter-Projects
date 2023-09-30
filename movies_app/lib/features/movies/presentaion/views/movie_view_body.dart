import 'package:flutter/material.dart';
import 'package:movies_app/features/movies/presentaion/views/widgets/about_widget.dart';
import 'package:movies_app/features/movies/presentaion/views/widgets/text_navigate.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import 'widgets/movie_details.dart';
import 'widgets/movie_name.dart';
import 'widgets/paly_icon.dart';

class MovieViewBody extends StatelessWidget {
  const MovieViewBody({super.key});

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
                  AboutWidget(),
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
