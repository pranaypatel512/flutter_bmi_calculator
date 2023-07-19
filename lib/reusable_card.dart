import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.color, this.childWidget, this.onPress});

  final Color color;
  final Widget? childWidget;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10.0)),
            child: childWidget));
  }
}
