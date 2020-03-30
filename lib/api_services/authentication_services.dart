import "./../helpers/custom_http_clients.dart";

class AuthenticationService {
  static Future<ValidateUserResponse> validateUserApi(ValidateUserRequest request) async {
    var response = await CustomHttpClient.customHttpPost(request, "/ValidateUser");

    return ValidateUserResponse.fromJson(response);
  }
}

class ValidateUserRequest {
  String username;
  String password;
  String verificationCode;

  ValidateUserRequest(this.username, this.password, this.verificationCode);

  Map<String, dynamic> toJson() => {"Username": username, "Password": password, "VerificationCode": verificationCode};
}

class ValidateUserResponse {
  int userID;
  String name;
  bool isValid;
  bool isFirstLogin;
  String error;

  ValidateUserResponse({this.userID, this.name, this.isValid, this.isFirstLogin, this.error});

  factory ValidateUserResponse.fromJson(Map<String, dynamic> parsedJson) {
    return ValidateUserResponse(
        userID: parsedJson['UserId'],
        name: parsedJson['Name'],
        isValid: parsedJson['Valid'],
        isFirstLogin: parsedJson['IsFirstLogin'],
        error: parsedJson['Error']);
  }
}
