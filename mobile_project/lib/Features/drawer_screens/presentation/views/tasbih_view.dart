import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../home/presentation/views/widgets/drawer.dart';
import 'tasbih_view_body.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: kWhiteColor),
        backgroundColor: kSecondaryColor,
        title: const Text(
          'المسبحة الإلكترونية',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      endDrawer: CustomDrawer(),
      body: TasbehViewBody(),
    );
  }
}
