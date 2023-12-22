import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project/constants.dart';
import 'package:mobile_project/core/utils/assets.dart';

import '../../../../../core/utils/app_router.dart';
import 'drawer_section_one.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 50).r,
        child: Column(
          children: [
            DrawerSectionOne(),
            DrawerItem(
              text: 'أذكار الصباح',
              ImagePath: AssetsData.AzkarMorning,
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
              },
            ),
            DrawerItem(
              text: 'أذكار المساء',
              ImagePath: AssetsData.AzkarNight,
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.kAzkarNightView);
              },
            ),
            DrawerItem(
              text: 'سماع أذكار الصباح',
              ImagePath: AssetsData.listening,
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouter.kListeningAzkarMorningView);
              },
            ),
            DrawerItem(
              text: 'سماع أذكار المساء',
              ImagePath: AssetsData.listening,
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouter.kListeningAzkarNightView);
              },
            ),
            DrawerItem(
              text: 'المسبحة الإلكترونية',
              ImagePath: AssetsData.tasbih,
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.kTasbehView);
              },
            ),
            DrawerItem(
              text: 'الخروج',
              ImagePath: AssetsData.exit,
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final String ImagePath;
  final VoidCallback onTap;
  const DrawerItem({
    super.key,
    required this.text,
    required this.ImagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12.0).r,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 12.w),
            Image.asset(ImagePath, scale: 12),
          ],
        ),
      ),
    );
  }
}
