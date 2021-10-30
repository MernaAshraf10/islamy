import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/images/qur2an_screen_logo.png'))
        ],
      ),
    );
  }
}
