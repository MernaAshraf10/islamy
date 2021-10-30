import 'package:flutter/material.dart';
import 'package:islamy/Sebha/SebhaTab.dart';
import 'package:islamy/ThemeData.dart';
import 'package:islamy/hadeth/hadethTab.dart';
import 'package:islamy/quran/QuranTab.dart';
import 'package:islamy/radio/RadioTab.dart';

class HomePage extends StatefulWidget {
  static const String routename = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
              'Islami',
              style: TextStyle(color: MyThemeData.colorBlack),
            ),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.primaryColor),
            child: BottomNavigationBar(
              onTap: (index) {
                currentPage = index;
                setState(() {});
              },
              currentIndex: currentPage,
              selectedIconTheme:
                  IconThemeData(color: MyThemeData.selectedIconColor, size: 18),
              unselectedIconTheme: IconThemeData(
                  color: MyThemeData.unselectedIconColor, size: 18),
              backgroundColor: MyThemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                  label: 'quran',
                  icon: Image.asset(
                    'assets/images/icon_quran.png',
                    width: 36,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'sebha',
                  icon: Image.asset(
                    'assets/images/icon_sebha.png',
                    width: 36,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'hadeth',
                  icon: Image.asset(
                    'assets/images/icon_hadeth.png',
                    width: 36,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'radio',
                  icon: Image.asset(
                    'assets/images/icon_radio.png',
                    width: 36,
                  ),
                )
              ],
            ),
          ),
          body: getCurrentPage(),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (currentPage == 0) {
      return QuranTab();
    } else if (currentPage == 1) {
      return SebhaTab();
    } else if (currentPage == 2) {
      return HadethTab();
    } else
      return RadioTab();
  }
}
