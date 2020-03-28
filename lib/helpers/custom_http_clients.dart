import 'package:http/http.dart' as http;
import 'dart:convert';

class CustomHttpClient {
  static const _baseUrl = "http://charitymobileservice.azurewebsites.net/consumerservice.svc";
  static const _secretKey = "Gk8OlaAj14";
  static const _successCodes = [200, 201];

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

      final http.Response response =
          await http.post("$_baseUrl$url", headers: requestHeaders, body: json.encode(requestObject));

      if (_successCodes.contains(response.statusCode)) {
        return response.body;
      } else {
        throw Exception("Failed to load api with invalid HTTP status code.");
      }
    } catch (e) {
      throw e;
    }
  }
}
