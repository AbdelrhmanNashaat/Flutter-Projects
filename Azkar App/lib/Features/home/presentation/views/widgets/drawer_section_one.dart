import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets.dart';

class DrawerSectionOne extends StatelessWidget {
  const DrawerSectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo, width: 180.w, height: 120.h),
        SizedBox(height: 15.h),
        Text(
          'أذكار',
          style: GoogleFonts.notoNastaliqUrdu(
            color: Colors.white,
            fontSize: 40.sp,
          ),
        ),
        Text(
          'الصباح و المساء',
          style: GoogleFonts.notoNastaliqUrdu(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
