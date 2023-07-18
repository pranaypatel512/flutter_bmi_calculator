import 'package:flutter/material.dart';

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
          style: TextStyle(color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
