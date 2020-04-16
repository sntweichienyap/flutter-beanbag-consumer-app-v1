import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double marginTop;
  final double fontSize;
  final TextAlign textAlign;

  CustomText(this.text, {Key key, this.marginTop = 0, this.fontSize = 14, this.textAlign = TextAlign.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, this.marginTop, 0, 15.0),
      child: Text(
        text,
        textAlign: this.textAlign,
        style: TextStyle(fontSize: this.fontSize),
      ),
    );
  }
}
