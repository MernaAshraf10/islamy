import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ThemeData.dart';
import 'package:islamy/hadeth/hadethNameItem.dart';

class HadethTab extends StatefulWidget {
  @override
  _HadethTabState createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_logo.png')),
        Expanded(
            flex: 3,
            child: Container(
                child: allHadeth.isEmpty
                    ? CircularProgressIndicator()
                    : ListView.separated(
                        itemBuilder: (buildContext, index) {
                          return HadethNameItem(allHadeth[index]);
                        },
                        separatorBuilder: (buildContext, index) {
                          return Container(
                            height: 1,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            color: MyThemeData.primaryColor,
                          );
                        },
                        itemCount: allHadeth.length,
                      )))
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void loadHadethFile() async {
    for (int i = 1; i < 50; i++) {
      String fileContent = await rootBundle.loadString('assets/hadeth/h$i.txt');
      List<String> lines = fileContent.split('\n');
      String content = '';
      String title = lines[0];
      for (int j = 1; j < lines.length; j++) {
        content += lines[j];
      }
      var h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
