import './../resources/theme_designs.dart';

class CouponModel {
  final int couponID;
  final String couponDescription;
  final String orgName;
  final String imageBase64;
  final String validUntilDate;
  final List<String> tncItems;
  final List<RedemptionPoint> redemptionPointItems;

  const CouponModel(
    this.couponID,
    this.couponDescription,
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
