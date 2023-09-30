import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const RoutineHabitTrackerApp());
}

class RoutineHabitTrackerApp extends StatelessWidget {
  const RoutineHabitTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: const SplashView(),
        );
      },
    );
  }
}
