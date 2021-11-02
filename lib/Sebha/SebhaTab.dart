import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamy/ThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: pi / 20,
                  child: Column(
                    children: [
                      Image.asset('assets/images/head_sebha_logo.png'),
                      Image.asset(
                        'assets/images/body_sebha_logo.png',
                      )
                    ],
                  ),
                ),
                Text(
                  'number of tasbeeh',
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: MyThemeData.primaryColor,
                        borderRadius: BorderRadius.circular(24)),
                    child: Text('$counter')),
                Container(
                  decoration: BoxDecoration(
                      color: MyThemeData.primaryColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Text('سبحان الله'),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          tooltip: 'Increment',
        ));
  }
}

class sebhaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text('press'));
  }
}
