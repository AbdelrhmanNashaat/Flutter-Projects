import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants.dart';

final myController = TextEditingController();

class TasbehViewBody extends StatelessWidget {
  const TasbehViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0).r,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35.h),
            AzkarContainer(),
            SizedBox(height: 35.h),
            CounterWidget(),
            SizedBox(height: 35.h),
            ButtonsRow(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

int numberOfCounts = 0;

class ButtonsRow extends StatefulWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return ZekrButton(
      text: 'ادخال العدد',
      width: double.infinity.sw,
      height: 35.h,
      onTap: () {
        setState(() {
          counter = 0;
          numberOfCounts = 0;
        });
        showCustomDialog(context, 'ادخل عدد مرات العد');
      },
    );
  }
}

void showCustomDialog(BuildContext context, String hintText) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color(0xffEFEFEF),
        content: SizedBox(
          width: 600.w,
          child: TextField(
            keyboardType: TextInputType.number,
            controller: myController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              filled: true,
              fillColor: kWhiteColor,
              constraints: BoxConstraints(
                minWidth: 150.0.w,
                minHeight: 40.0.h,
                maxWidth: 350.0.w,
                maxHeight: 45.0.h,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: ZekrButton(
              text: 'موافق',
              onTap: () {
                String enteredText = myController.text;
                int parsedInt = int.parse(enteredText);
                numberOfCounts = parsedInt;
                GoRouter.of(context).pop();
              },
              width: 100,
              height: 30,
            ),
          ),
        ],
      );
    },
  );
}

class ZekrButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  const ZekrButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8.0).r,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

int counter = 0;

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
  });

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter++;
          if (counter == numberOfCounts) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kSecondaryColor,
                content: Text(
                  'لقد انهيت العد هنا!',
                  style: TextStyle(color: kWhiteColor, fontSize: 20.sp),
                ),
              ),
            );
            counter = 0;
            numberOfCounts = 0;
          }
        });
      },
      child: CircleAvatar(
        radius: 100.r,
        backgroundColor: kSecondaryColor,
        child: CircleAvatar(
          radius: 90.r,
          backgroundColor: Colors.white,
          child: Center(
            child: Text(
              '$counter',
              style: GoogleFonts.notoSansIndicSiyaqNumbers(
                fontSize: 100.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> list = <String>[
  'سبحان الله',
  'الحمد لله',
  'لا اله الا الله ',
  'الله اكبر',
  'لا حول و لا قوة الا بالله ',
  'استغفر الله العظيم',
];
String? dropdownValue = list.first;

class AzkarContainer extends StatefulWidget {
  const AzkarContainer({
    super.key,
  });

  @override
  State<AzkarContainer> createState() => _AzkarContainerState();
}

class _AzkarContainerState extends State<AzkarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.sw,
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4.0).r,
      ),
      child: DropdownButton<String>(
        icon: Icon(null),
        value: dropdownValue,
        onChanged: (value) {
          setState(() {
            dropdownValue = value;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(child: Text(value)),
          );
        }).toList(),
        isExpanded: true,
        style: TextStyle(
            color: kSecondaryColor,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  DropdownButton<dynamic> DropDownButtonMethod() => DropdownButton(
        value: dropdownValue,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
            ),
          ),
        ),
        onChanged: (value) {
          setState(() {
            dropdownValue = value;
          });
        },
        items: list.map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      );
}
