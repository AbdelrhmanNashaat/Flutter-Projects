import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';
import 'personal_image.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 141,
      left: 112,
      child: PersonlImage(
          backgroundColor: kBrownColor,
          icon: Icon(
            FontAwesomeIcons.plus,
            color: kGrayColor,
            size: 22,
          ),
          raduis: 16),
    );
  }
}
