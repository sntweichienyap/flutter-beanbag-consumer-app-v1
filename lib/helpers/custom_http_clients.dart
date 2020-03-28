import 'package:http/http.dart' as http;

class CustomHttpClient {
  final _baseUrl = "http://charitymobileservice.azurewebsites.net/consumerservice.svc";
  final _secretKey = "Gk8OlaAj14";

  static Future<dynamic> customHttpPost(Object object, String url) {
    var requestObject = new _RequestObject();
    var unixTimeStamp = "";
    var userID = 1;
    var hastedToken = "";

    requestObject.request = object;

    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      "Accept": "application/json",
      "DeviceId": "$userID",
      "TimeStamp": "$unixTimeStamp",
      "HashInput": "$hastedToken"
    };

    throw Exception("200");
  }
}

class _RequestObject {
  Object request;
}
