import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constance.dart';
import 'package:flutter_bmi_calculator/icons_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';

enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;

  Gender? selectedGender;
  int height = 180;
  int weight = 1;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      childWidget: const IconsContent(
                        iconData: FontAwesomeIcons.mars,
                        labelText: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      childWidget: const IconsContent(
                        iconData: FontAwesomeIcons.venus,
                        labelText: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kLabelLargeTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555),
                          thumbColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(0XFF8D8E98),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kLabelLargeTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                fillColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.minus),
                                onClick: () {
                                  setState(() {
                                    if (weight > 1) {
                                      weight -= 1;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundedIconButton(
                                fillColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.plus),
                                onClick: () {
                                  setState(() {
                                    if (weight < 500) {
                                      weight += 1;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kLabelLargeTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                fillColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.minus),
                                onClick: () {
                                  setState(() {
                                    if (age > 1) {
                                      age -= 1;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundedIconButton(
                                fillColor: Color(0xFF4C4F5E),
                                child: Icon(FontAwesomeIcons.plus),
                                onClick: () {
                                  setState(() {
                                    if (age < 100) {
                                      age += 1;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: const EdgeInsets.only(top: 10.0),
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

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
