import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constance.dart';

class IconsContent extends StatelessWidget {
  const IconsContent(
      {super.key, required this.iconData, required this.labelText});

  final IconData iconData;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          labelText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
