import 'package:flutter/material.dart';

import 'movie_view_body.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieViewBody(),
    );
  }
}
