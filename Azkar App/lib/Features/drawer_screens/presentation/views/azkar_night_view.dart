import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home/presentation/views/widgets/drawer.dart';
import 'azkar_night_view_body.dart';

class AzkarNightView extends StatelessWidget {
  const AzkarNightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: kWhiteColor),
        backgroundColor: kSecondaryColor,
        title: const Text(
          'أذكار المساء',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      endDrawer: CustomDrawer(),
      body: AzkarNightViewBody(),
    );
  }
}
