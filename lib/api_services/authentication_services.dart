import "./../api_services/base_services.dart";

class AuthenticationService {
/* Validate User */
}

class ValidateUserRequest extends BaseRequest {
  String username;
  String password;
  String verificationCode;

  ValidateUserRequest({this.username, this.password, this.verificationCode});

  Map<String, dynamic> toJson() => {"Username": username, "Password": password, "VerificationCode": verificationCode};
}

class ValidateUserResponse extends BaseResponse {
  int userID;
  String name;
  bool isValid;
  bool isFirstLogin;

  ValidateUserResponse({error, this.userID, this.name, this.isValid, this.isFirstLogin}) : super(error: error);

  factory ValidateUserResponse.fromJson(Map<String, dynamic> json) {
    return ValidateUserResponse(
      userID: json['UserId'],
      name: json['Name'],
      isValid: json['Valid'],
      isFirstLogin: json['IsFirstLogin'],
      error: json["Error"],
    );
  }
}
