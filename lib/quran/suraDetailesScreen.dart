import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ThemeData.dart';

class SuraDetailesScreen extends StatefulWidget {
  static const String routName = 'sura Detailes';

  @override
  _SuraDetailesScreenState createState() => _SuraDetailesScreenState();
}

class _SuraDetailesScreenState extends State<SuraDetailesScreen> {
  List<String> verses = [];

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
          body: Expanded(
              flex: 3,
              child: Container(
                  child: verses.isEmpty
                      ? CircularProgressIndicator()
                      : ListView.separated(
                          itemBuilder: (buildContext, index) {
                            return Text(verses[index]);
                          },
                          separatorBuilder: (buildContext, index) {
                            return Container(
                              height: 1,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              color: MyThemeData.primaryColor,
                            );
                          },
                          itemCount: verses.length,
                        ))))
    ]);
  }

  void loadSuraFile() async {
    for (int i = 1; i < 114; i++) {
      String fileContent = await rootBundle.loadString('assets/hadeth/h$i.txt');
      List<String> ayat = fileContent.split('\n');
      this.verses = ayat;
    }
  }
}

class SuraDetailesArgs {
  String suraName;
  int suraIndex;

  SuraDetailesArgs(this.suraName, this.suraIndex);
}
