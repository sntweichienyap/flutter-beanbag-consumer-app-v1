enum StorageEnum { email, userID }

enum RedeemMethodEnum { scan, input, swipe }

extension on RedeemMethodEnum {
  String toSystemValue() {
    return this.toString().toUpperCase();
  }
}
