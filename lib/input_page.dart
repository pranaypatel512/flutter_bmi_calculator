import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Container(
                  width: 20,
                  height: double.infinity,
                  color: Color(0xFF0A0E21),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ],
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
