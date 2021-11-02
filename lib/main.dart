import 'package:flutter/material.dart';
import 'package:islamy/HomePage.dart';
import 'package:islamy/ThemeData.dart';
import 'package:islamy/hadeth/hadethDetailesScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: MyThemeData.primaryColor,
          primaryColor: MyThemeData.primaryColor),
      title: 'Flutter Demo',
      routes: {
        HomePage.routename: (buildContext) => HomePage(),
        HadethDetailesScreen.routName: (buildContext) => HadethDetailesScreen(),
      },
      initialRoute: HomePage.routename,
    );
  }
}
