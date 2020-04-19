import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';

class FundraisingModel {
  int fundraisingID;
  String fundraisingName;
  String fundraisingDescription;
  String validUntilDate;
  String imageBase64;

  FundraisingModel({
    this.fundraisingID = 1,
    this.fundraisingName = "Campaign A",
    this.fundraisingDescription ="This is a description.",
    this.validUntilDate = "1/1/2020",
    this.imageBase64 = ThemeDesign.sampleImage,
  });
}
