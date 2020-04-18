import 'package:flutter/material.dart';

import './../../pages/coupon_pages/coupon_details_page.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_alert_dialog.dart';
import './../../widgets/custom_text.dart';
import './../../models/coupon_models.dart';
import './../../helpers/common_extensions.dart';

class CouponListingWidget extends StatelessWidget {
  final CouponModel coupon;

  CouponListingWidget(this.coupon);

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
        leading: Image.memory(
          coupon.imageBase64.toImage(),
          width: 80,
          height: 80,
        ),
        title: CustomText(
          coupon.orgName,
          fontSize: 18,
        ),
        subtitle: Text(coupon.voucherDescription),
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.share,
                color: ThemeDesign.appPrimaryColor,
              ),
              onPressed: () => CustomAlertDialog.show(context, "Share ${coupon.orgName}"),
            ),
            IconButton(
              icon: Icon(
                Icons.file_download,
                color: ThemeDesign.appPrimaryColor,
              ),
              onPressed: () => CustomAlertDialog.show(context, "Download ${coupon.orgName}"),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CouponDetailsPage(
                coupon: coupon,
              ),
            ),
          );
        },
      ),
    );
  }
}
