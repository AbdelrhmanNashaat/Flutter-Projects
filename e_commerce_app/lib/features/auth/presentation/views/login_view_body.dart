import 'package:e_commerce_app/features/auth/presentation/views/widgets/second_section_log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/first_section_log_in.dart';
import 'widgets/row_of_google_and_facebook.dart';

class LogInUpViewBody extends StatelessWidget {
  const LogInUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15).r,
      child: ListView(
        children: const [
          Column(
            children: [
              FirstSectionLogIn(),
              SecondSectionLogIn(),
              RowOfGoogleAndFacebook(),
            ],
          ),
        ],
      ),
    );
  }
}
