import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home/presentation/views/widgets/drawer.dart';
import 'listening_azkar_night_view_body.dart';

class ListeningAzkarNightView extends StatelessWidget {
  const ListeningAzkarNightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: kWhiteColor),
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        title: const Text(
          'سماع اذكار المساء',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: CustomDrawer(),
      body: ListeningAzkarNightViewBody(),
    );
  }
}
