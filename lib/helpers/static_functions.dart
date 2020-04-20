import 'package:flutter/cupertino.dart';

class StaticFunctions {
  static double GetDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
