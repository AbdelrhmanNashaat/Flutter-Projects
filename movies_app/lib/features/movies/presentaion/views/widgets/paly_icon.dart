import 'package:flutter/material.dart';

import '../../../../../constant.dart';
class PlayIconWidget extends StatelessWidget {
  const PlayIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 150, top: 310),
      child: CircleAvatar(
        backgroundColor: kPlayIconColor,
        radius: 34,
        child: Icon(Icons.play_arrow, size: 48, color: kBlackColor),
      ),
    );
  }
}
