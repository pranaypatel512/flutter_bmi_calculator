import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/icons_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void toggleColor(int geneder) {
    if (geneder == 1) {
      if (maleCardColor == activeCardColor) {
        maleCardColor = inActiveCardColor;
      } else {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }
    } else if (geneder == 2) {
      if (femaleCardColor == activeCardColor) {
        femaleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          toggleColor(1);
                        });
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        childWidget: const IconsContent(
                          iconData: FontAwesomeIcons.mars,
                          labelText: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          toggleColor(2);
                        });
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        childWidget: const IconsContent(
                          iconData: FontAwesomeIcons.venus,
                          labelText: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ReusableCard(
                color: cardColor,
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
              margin: const EdgeInsets.only(top: 10.0),
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
