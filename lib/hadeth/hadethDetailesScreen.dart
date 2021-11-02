import 'package:flutter/material.dart';
import 'package:islamy/ThemeData.dart';
import 'package:islamy/hadeth/hadethTab.dart';

class HadethDetailesScreen extends StatelessWidget {
  static const routName = 'hadeth-detailes';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            args.title,
            style: TextStyle(color: MyThemeData.colorBlack),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24)),
          child: SingleChildScrollView(
            child: Text(
              args.content,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      )
    ]);
  }
}
