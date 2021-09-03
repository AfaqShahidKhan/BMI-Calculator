import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableColumIcon extends StatelessWidget {
  ReusableColumIcon({this.icon_type, this.lable});
  final IconData? icon_type;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon_type,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable!,
          style: klableTextStyle,
        )
      ],
    );
  }
}
