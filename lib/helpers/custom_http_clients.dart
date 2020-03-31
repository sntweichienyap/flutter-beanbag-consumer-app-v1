import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';
import './local_shared_preferences.dart';
import './../enums/generic_enum.dart';
import './common_extensions.dart';

class CustomHttpClient {
  static const String _baseUrl = "http://charitymobileservice.azurewebsites.net/consumerservice.svc";
  static const String _secretKey = "Gk8OlaAj14";
  static const List<int> _successCodes = [200, 201];

  static Future<dynamic> customHttpPost(Object object, String url) async {
    var unixTimeStamp = _unixTimeStamp();
    var userID = await LocalSharedPreferences.getValue(StorageEnum.userID);
    var intUserID = userID.toInt();
    var hashedToken = _hashedToken("$intUserID$unixTimeStamp", _secretKey);

    Map<String, String> requestHeaders = {
      "Content-type": "application/json; charset=UTF-8",
      "Accept": "application/json",
      "DeviceId": "$intUserID",
      "TimeStamp": "$unixTimeStamp",
      "HashInput": "$hashedToken"
    };

    try {
      var requestObject = {};
      requestObject["request"] = object;

      var jsonRequest = json.encode(object);

      final http.Response response = await http.post("$_baseUrl$url", headers: requestHeaders, body: jsonRequest);

      if (_successCodes.contains(response.statusCode)) {
        return json.decode(response.body);
      } else {
        throw Exception("Failed to load api with invalid HTTP status code.");
      }
    } catch (e) {
      throw e;
    }
  }

  static String _unixTimeStamp() {
    var unixEpoch = new DateTime(1970, 1, 1).millisecond;
    var currentEpoch = new DateTime.now().millisecondsSinceEpoch;
    return (currentEpoch - unixEpoch).toString();
  }

  static String _hashedToken(String message, String secretKey) {
    var messageBytes = ascii.encode(message);
    var secretKeyBytes = ascii.encode(secretKey);

    Hmac hmac = new Hmac(sha256, secretKeyBytes);
    Digest digest = hmac.convert(messageBytes);

    String base64Mac = base64.encode(digest.bytes);

    return base64Mac;
  }
}
