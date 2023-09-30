import 'package:flutter/material.dart';

import '../../../../../constant.dart';
bool isChecked = false;
class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.04,
      child: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {},
        fillColor: const MaterialStatePropertyAll(kBlackColorWithOpacity2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.5),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}