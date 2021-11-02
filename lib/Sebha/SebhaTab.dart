import 'dart:math';

import 'package:flutter/material.dart';

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
                      Image.asset('assets/images/body_sebha_logo.png')
                    ],
                  ),
                ),
                Text(
                  'number of tasbeeh',
                  style: TextStyle(fontSize: 18),
                ),
                Text('$counter'),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}

class sebhaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text('press'));
  }
}
