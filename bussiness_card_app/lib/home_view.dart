// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: HomeViewBody(),
      )
;
  }
}
