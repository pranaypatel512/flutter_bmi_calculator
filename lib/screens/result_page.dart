import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/componants/bottom_button.dart';
import 'package:flutter_bmi_calculator/constance.dart';
import 'package:flutter_bmi_calculator/componants/reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kActiveCardColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "OK",
                        style: kResultTextStyle,
                      ),
                      Text(
                        "11.2",
                        style: kBMITextStyle,
                      ),
                      Text(
                        "your BMI result is quite low, you should eat more!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ],
                  ),
                )),
            BottomButtonWidget(
              label: 'RECALCULATE',
              onClick: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }
}
