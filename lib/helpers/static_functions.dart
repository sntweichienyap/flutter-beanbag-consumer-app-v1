import 'package:flutter/cupertino.dart';

class StaticFunctions {
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
