import 'package:flutter/material.dart';
import 'package:islamy/ThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  List<String> tsabeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر'
  ];
  double angle = 0;
  int index = 0;

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
                Stack(
                  children: [
                    Image.asset('assets/images/head_sebha_logo.png'),
                    InkWell(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .09),
                          child: Transform.rotate(
                              angle: 20,
                              child: Image.asset(
                                'assets/images/body_sebha_logo.png',
                              ))),
                    )
                  ],
                ),
                Text(
                  'number of tasbeeh',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: MyThemeData.primaryColor,
                        borderRadius: BorderRadius.circular(24)),
                    child: Text(
                      '$counter',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: MyThemeData.primaryColor,
                      borderRadius: BorderRadius.circular(35)),
                  child: Text('${tsabeh[index]}'),
                )
              ],
            ),
          ),
        ));
  }

  void onSebhaPressed() {
    counter++;
    if (index % 33 == 0) {
      if (index == tsabeh.length - 1) {
        index = 0;
      }
      index++;
    }
    setState(() {
      angle += 20;
    });
  }
}