import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color backroundColor;
  final Color borderColor;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.backroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => GoRouter.of(context).push('/homepage'),
      style: ButtonStyle(
        side: MaterialStatePropertyAll(
          BorderSide(
            color: borderColor,
            width: 1.5,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(backroundColor),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(316, 45),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 130,
        ),
        child: TextPoppins(
          text: text,
          size: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
