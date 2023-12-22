import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home/presentation/views/widgets/drawer.dart';
import 'listening_azkar_morning_view_body.dart';

class ListeningAzkarMorningView extends StatelessWidget {
  const ListeningAzkarMorningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: kWhiteColor),
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        title: const Text(
          'سماع اذكار الصباح',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: CustomDrawer(),
      body: ListeningAzkarMorningViewBody(),
    );
  }
}
