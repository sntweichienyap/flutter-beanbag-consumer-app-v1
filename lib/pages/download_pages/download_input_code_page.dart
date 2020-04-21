import 'package:flutter/material.dart';

import './../../resources/theme_designs.dart';
import './../../widgets/custom_alert_dialog.dart';
import './../../widgets/custom_app_bar.dart';
import './../../widgets/custom_sized_box.dart';
import './../../widgets/custom_text.dart';

class DownloadInputCodePage extends StatefulWidget {
  @override
  _DownloadInputCodePageState createState() => _DownloadInputCodePageState();
}

class _DownloadInputCodePageState extends State<DownloadInputCodePage> {
  final _couponController = TextEditingController();
  final _campaignController = TextEditingController();

  @override
  void dispose() {
    _couponController.dispose();
    _campaignController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Input Code",
        showWidget: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(ThemeDesign.emptySpacePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomText(
                "Insert code to download coupon",
                fontSize: ThemeDesign.titleFontSize,
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: _couponController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: ThemeDesign.appPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: ThemeDesign.appPrimaryColor),
                    ),
                    hintText: 'Enter code here'),
              ),
              CustomSizedBox(),
              FlatButton(
                padding: EdgeInsets.all(20),
                child: Text(
                  "ENTER",
                  style: TextStyle(fontSize: ThemeDesign.buttonFontSize),
                ),
                onPressed: () {
                  if (_couponController.text.isEmpty) {
                    return CustomAlertDialog.showError(
                        context, "Coupon cannot be empty.");
                  } else {
                    CustomAlertDialog.showSuccess(
                        context, "You entered ${_couponController.text}.");
                    _couponController.text = "";
                    return;
                  }
                },
                color: ThemeDesign.buttonSecondaryColor,
                textColor: ThemeDesign.buttonTextSecondaryColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ThemeDesign.appPrimaryColor,
                  ),
                ),
              ),
              CustomSizedBox(height: 40),
              Text(
                "OR",
                style: ThemeDesign.titleStyle,
              ),
              CustomSizedBox(height: 40),
              CustomText(
                "Scan campaign code to download coupons",
                fontSize: ThemeDesign.titleFontSize,
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: _campaignController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: ThemeDesign.appPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: ThemeDesign.appPrimaryColor),
                    ),
                    hintText: 'Enter campaign here'),
              ),
              CustomSizedBox(),
              FlatButton(
                padding: EdgeInsets.all(20),
                child: Text(
                  "ENTER",
                  style: TextStyle(fontSize: ThemeDesign.buttonFontSize),
                ),
                onPressed: () {
                  if (_campaignController.text.isEmpty) {
                    return CustomAlertDialog.showError(
                        context, "Campaign cannot be empty.");
                  } else {
                    CustomAlertDialog.showSuccess(
                        context, "You entered ${_campaignController.text}.");
                    _campaignController.text = "";
                    return;
                  }
                },
                color: ThemeDesign.buttonSecondaryColor,
                textColor: ThemeDesign.buttonTextSecondaryColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ThemeDesign.appPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
