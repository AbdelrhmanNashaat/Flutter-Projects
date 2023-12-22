import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_project/constants.dart';

import '../../../home/presentation/views/widgets/container_border.dart';
import '../../../home/presentation/views/widgets/date_row.dart';
import '../data/azkar_night.dart';

PageController _pageController = PageController();
int counter = 0;
int zekrNumber = 0;
int textIndex = 0;
int zekrCount = 0;

class AzkarNightViewBody extends StatefulWidget {
  const AzkarNightViewBody({super.key});

  @override
  State<AzkarNightViewBody> createState() => _AzkarNightViewBodyState();
}

class _AzkarNightViewBodyState extends State<AzkarNightViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          DateRow(),
          SizedBox(height: 5.h),
          ContainerBorder(
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0).r,
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  CounterRow(),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: AzkarNight.itemMap.length,
                      itemBuilder: (BuildContext context, int index) {
                        textIndex = index;
                        zekrCount = AzkarNight.itemMap[index].count;
                        print(zekrCount);
                        return Text(
                          AzkarNight.itemMap[index]!.text,
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        );
                      },
                      onPageChanged: (value) {
                        setState(() {
                          zekrNumber = textIndex;
                          counter = 0;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonsRow(
                        onPressed: () => _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        ),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: kWhiteColor,
                          size: 18,
                        ),
                        color: Color(0xffCF0072),
                      ),
                      SizedBox(width: 25.w),
                      ButtonsRow(
                        onPressed: () => _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        ),
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: kWhiteColor,
                          size: 18,
                        ),
                        color: Color(0xff5B1F69),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  final Color? color;
  final VoidCallback onPressed;
  final Icon icon;
  const ButtonsRow({
    super.key,
    this.color,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: color,
          child: Center(
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
            ),
          ),
        ),
      ],
    );
  }
}

class CounterRow extends StatefulWidget {
  const CounterRow({
    super.key,
  });

  @override
  State<CounterRow> createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${zekrNumber + 1}/${AzkarNight.itemMap.length}',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (zekrCount > counter) {
                counter++;
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: kSecondaryColor,
                    content: Text(
                      'لقد انهيت العد هنا!',
                      style: TextStyle(color: kWhiteColor, fontSize: 20.sp),
                    ),
                  ),
                );
              }
            });
          },
          child: CircleAvatar(
            radius: 44.r,
            backgroundColor: Color(0xff434343),
            child: CircleAvatar(
              radius: 38.r,
              backgroundColor: kWhiteColor,
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
