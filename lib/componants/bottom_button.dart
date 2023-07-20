import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constance.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    super.key,
    required this.onClick,
    required this.label,
  });

  final VoidCallback onClick;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(
            child: Text(
          label,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: const EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
