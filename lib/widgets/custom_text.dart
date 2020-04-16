import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double marginTop;

  CustomText(this.text, {this.marginTop = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, marginTop, 0, 15.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
