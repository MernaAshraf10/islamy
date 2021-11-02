import 'package:flutter/material.dart';
import 'package:islamy/ThemeData.dart';

class SuraDetailesScreen extends StatelessWidget {
  static const String routName = 'sura Detailes';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailesArgs;
    return Stack(children: [
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            '${args.suraName}',
            style: TextStyle(color: MyThemeData.colorBlack),
          ),
        ),
      )
    ]);
  }
}

class SuraDetailesArgs {
  String suraName;
  int suraIndex;

  SuraDetailesArgs(this.suraName, this.suraIndex);
}
