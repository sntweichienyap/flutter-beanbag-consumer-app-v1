import './../resources/theme_designs.dart';

class SupportedMerchantModel {
  int supportedMerchantID;
  String imageBase64;

  SupportedMerchantModel({
    this.supportedMerchantID = 1,
    this.imageBase64 = ThemeDesign.sampleImage,
  });
}
