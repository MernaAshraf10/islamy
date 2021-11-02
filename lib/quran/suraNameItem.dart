import 'package:flutter/material.dart';
import 'package:islamy/quran/suraDetailesScreen.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
  int suraIndex;

  SuraNameItem(this.suraName, this.suraIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailesScreen.routName,
            arguments: SuraDetailesArgs(suraName, suraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$suraName',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
    ;
  }
}
