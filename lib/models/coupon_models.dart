import './../resources/theme_designs.dart';

class CouponModel {
  int voucherID;
  String voucherDescription;
  String orgName;
  String imageBase64;
  String validUntilDate;
  List<String> tncItems;
  List<RedemptionPoint> redemptionPointItems;

  CouponModel(
    this.voucherID,
    this.voucherDescription,
    this.orgName, {
    this.imageBase64 = ThemeDesign.sampleImage,
    this.validUntilDate = "1/1/2020",
    this.tncItems = const [
      "This is a very long text. This is a very long text.",
      "This is a very long text. This is a very long text."
    ],
    this.redemptionPointItems = const [const RedemptionPoint(), const RedemptionPoint()],
  });
}

class RedemptionPoint {
  final int redemptionPointID;
  final String name;
  final String description;
  final String contactNo;

  const RedemptionPoint(
      {this.redemptionPointID = 1,
      this.name = "Redemption point",
      this.description = "This is description.",
      this.contactNo = "0123456789"});
}
