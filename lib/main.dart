import 'package:flutter/material.dart';
import 'package:islamy/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {HomePage.routename: (buildContext) => HomePage()},
      initialRoute: HomePage.routename,
    );
  }
}
