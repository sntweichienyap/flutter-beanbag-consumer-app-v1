import './../models/coupon_models.dart';
import './../resources/theme_designs.dart';

class FundraisingModel {
  int fundraisingID;
  String fundraisingName;
  String fundraisingDescription;
  String address;
  String contactNo;
  String validUntilDate;
  String imageBase64;

  String purpose;
  String campaignEndDate;
  String raisedAmount;

  List<CouponModel> couponItems;

  FundraisingModel({
    this.fundraisingID = 1,
    this.fundraisingName = "Campaign A",
    this.fundraisingDescription = "This is a description.",
    this.address = "This is a very long address.",
    this.contactNo = "0123456789",
    this.validUntilDate = "1/1/2020",
    this.imageBase64 = ThemeDesign.sampleImage,
    //
    this.purpose = "Campaign @ 2020",
    this.campaignEndDate = "31/12/2020",
    this.raisedAmount = "RM123",
    //
    this.couponItems = const [
      const CouponModel(1, "Voucher A", "This is a description."),
      const CouponModel(1, "Voucher B", "This is a description."),
    ],
  });
}
