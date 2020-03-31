import 'package:shared_preferences/shared_preferences.dart';

import './../enums/generic_enum.dart';

class LocalSharedPreferences {
  static Future<bool> setValue(StorageEnum storageEnum, String value) async {
    var prefs = await SharedPreferences.getInstance();

    return await prefs.setString(storageEnum.toString(), value);
  }

  static Future<String> getValue(StorageEnum storageEnum) async {
    var prefs = await SharedPreferences.getInstance();

    return prefs.getString(storageEnum.toString());
  }
}
