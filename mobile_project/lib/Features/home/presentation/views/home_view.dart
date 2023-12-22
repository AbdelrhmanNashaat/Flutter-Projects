import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'home_view_body.dart';
import 'widgets/drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: kWhiteColor),
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        title: Text(
          'أذكار الصباح',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
