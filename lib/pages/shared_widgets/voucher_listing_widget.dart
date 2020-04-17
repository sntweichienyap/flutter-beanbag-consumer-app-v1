import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_alert_dialog.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_text.dart';

class VoucherListingWidget extends StatelessWidget {
  final String orgName;
  final String voucherDescription;

  VoucherListingWidget(this.orgName, this.voucherDescription);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)),
          side: BorderSide(width: 2, color: ThemeDesign.appPrimaryColor)),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(
          "lib/assets/images/picture_sample.png",
          width: 80,
          height: 80,
        ),
        title: CustomText(
          orgName,
          fontSize: 18,
        ),
        subtitle: Text(voucherDescription),
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.share,
                color: ThemeDesign.appPrimaryColor,
              ),
              onPressed: () => CustomAlertDialog.show(context, "Share $orgName"),
            ),
            IconButton(
              icon: Icon(
                Icons.file_download,
                color: ThemeDesign.appPrimaryColor,
              ),
              onPressed: () => CustomAlertDialog.show(context, "Download $orgName"),
            )
          ],
        ),
      ),
    );
  }
}
