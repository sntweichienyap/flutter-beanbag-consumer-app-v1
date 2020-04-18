import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';

class CouponModel {
  int voucherID;
  String voucherDescription;
  String orgName;
  String imageBase64;
  String tnc;
  String validUntilDate;

  CouponModel(this.voucherID, this.voucherDescription, this.orgName, {this.imageBase64 = ThemeDesign.sampleImage, this.tnc = "This is a very long text. This is a very long text. This is a very long text. This is a very long text.", this.validUntilDate = "1/1/2020"});
}
