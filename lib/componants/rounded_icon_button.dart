import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {super.key,
      required this.onClick,
      required this.fillColor,
      required this.child});

  final VoidCallback onClick;
  final Color fillColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onClick,
      shape: CircleBorder(),
      fillColor: fillColor,
      constraints: BoxConstraints.tightFor(width: 58.0, height: 58.0),
    );
  }
}
