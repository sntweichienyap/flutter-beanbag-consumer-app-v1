import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';

class CustomHttpClient {
  static const String _baseUrl = "http://charitymobileservice.azurewebsites.net/consumerservice.svc";
  static const String _secretKey = "Gk8OlaAj14";
  static const List<int> _successCodes = [200, 201];

  static Future<dynamic> customHttpPost(Object object, String url) async {
    var unixTimeStamp = "";
    var userID = 1;
    var hastedToken = "";

    Map<String, String> requestHeaders = {
      "Content-type": "application/json; charset=UTF-8",
      "Accept": "application/json",
      "DeviceId": "$userID",
      "TimeStamp": "$unixTimeStamp",
      "HashInput": "$hastedToken"
    };

    try {
      var requestObject = {};
      requestObject["request"] = object;

      var jsonRequest = json.encode(object);

      final http.Response response = await http.post("$_baseUrl$url", headers: requestHeaders, body: jsonRequest);

      _hashedToken("abc", "def");

      if (_successCodes.contains(response.statusCode)) {
        return json.decode(response.body);
      } else {
        throw Exception("Failed to load api with invalid HTTP status code.");
      }
    } catch (e) {
      throw e;
    }
  }

  static String _getUnixTimeStamp() {
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
