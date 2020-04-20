import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/helpers/static_functions.dart';
import 'package:flutter_beanbag_consumer_app_v1/pages/download_pages/download_input_code_page.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_sized_box.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_text.dart';
import './../../widgets/custom_alert_dialog.dart';

class DownloadIndexPage extends StatefulWidget {
  @override
  _DownloadIndexPageState createState() => _DownloadIndexPageState();
}

class _DownloadIndexPageState extends State<DownloadIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: StaticFunctions.GetDeviceWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText(
              "Insert code to download coupon",
              marginTop: 30,
              fontSize: ThemeDesign.titleFontSize,
              textAlign: TextAlign.center,
            ),
            CustomSizedBox(),
            FlatButton(
              padding: EdgeInsets.all(20),
              child: Text(
                "Input Code",
                style: TextStyle(fontSize: ThemeDesign.buttonFontSize),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DownloadInputCodePage()),
                );
              },
              color: ThemeDesign.buttonSecondaryColor,
              textColor: ThemeDesign.buttonTextSecondaryColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: ThemeDesign.appPrimaryColor,
                ),
              ),
            ),
            CustomSizedBox(),
            Text(
              "OR",
              style: ThemeDesign.titleStyle,
            ),
            CustomSizedBox(),
            CustomText(
              "Scan QR code to download coupon",
              marginTop: 30,
              fontSize: ThemeDesign.titleFontSize,
              textAlign: TextAlign.center,
            ),
            CustomSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => {
                    CustomAlertDialog.show(context, "Scan Program."),
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "lib/assets/images/picture_qr_code.png",
                        width: StaticFunctions.GetDeviceWidth(context) / 4,
                        fit: BoxFit.contain,
                      ),
                      CustomSizedBox(
                        height: 5,
                      ),
                      Text("Program"),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    CustomAlertDialog.show(context, "Scan Campaign."),
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "lib/assets/images/picture_qr_code.png",
                        width: StaticFunctions.GetDeviceWidth(context) / 4,
                        fit: BoxFit.contain,
                      ),
                      CustomSizedBox(
                        height: 5,
                      ),
                      Text("Campaign"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
