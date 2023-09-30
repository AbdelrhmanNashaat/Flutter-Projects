import 'package:flutter/material.dart';

import 'reviews_view_body.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReviewsViewBody(),
    );
  }
}
