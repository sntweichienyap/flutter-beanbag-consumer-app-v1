import 'dart:convert';

import "./../helpers/custom_http_clients.dart";

class AuthenticationService {
  static Future<ValidateUserResponse> validateUserApi(ValidateUserRequest request) async {
    var response = await CustomHttpClient.customHttpPost(request, "/ValidateUser");

    var parsedJson = json.decode(response);
    return ValidateUserResponse.fromJson(parsedJson);
  }
}

class ValidateUserRequest {
  String username;
  String password;
  String verificationCode;

  ValidateUserRequest(this.username, this.password, this.verificationCode);
}

class ValidateUserResponse {
  int userID;
  String name;
  bool isValid;
  bool isFirstLogin;
  String error;

  ValidateUserResponse.fromJson(Map<String, dynamic> data)
      : userID = data["UserId"],
        name = data["Name"],
        isValid = data["Valid"],
        isFirstLogin = data["IsFirstLogin"],
        error = data["Error"];
}
