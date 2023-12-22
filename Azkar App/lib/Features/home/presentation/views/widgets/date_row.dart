import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hijri/hijri_calendar.dart';

final today = HijriCalendar.now();

extension HijriCalendarExtension on HijriCalendar {
  String getDayNameInArabic() {
    switch (getDayName()) {
      case 'Saturday':
        return 'السبت';
      case 'Sunday':
        return 'الأحد';
      case 'Monday':
        return 'الاثنين';
      case 'Tuesday':
        return 'الثلاثاء';
      case 'Wednesday':
        return 'الأربعاء';
      case 'Thursday':
        return 'الخميس';
      case 'Friday':
        return 'الجمعة';
      default:
        return getDayName();
    }
  }
}

final now = DateTime.now();
final dateOnly = DateTime(now.year, now.month, now.day);

class DateRow extends StatelessWidget {
  const DateRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            today.toFormat("dd-mm-yyyy"),
            style: TextStyle(fontSize: 20.sp),
          ),
          Text(
            today.getDayNameInArabic(),
            style: TextStyle(
              fontSize: 22.sp,
            ),
          ),
          Text(
            '${now.day}-${now.month}-${now.year}',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
