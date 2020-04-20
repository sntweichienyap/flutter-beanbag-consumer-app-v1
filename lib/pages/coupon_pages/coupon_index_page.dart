import 'package:flutter/material.dart';

import './../../models/coupon_models.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_alert_dialog.dart';
import './../../helpers/extension_functions.dart';

import 'coupon_details_page.dart';

class CouponIndexPage extends StatefulWidget {
  @override
  _CouponIndexPageState createState() => _CouponIndexPageState();
}

class _CouponIndexPageState extends State<CouponIndexPage> {
  final _couponList = <CouponModel>[
    CouponModel(1, "This is a voucher.", "Org A"),
    CouponModel(2, "This is a voucher.", "Org A"),
    CouponModel(3, "This is a voucher.", "Org A"),
    CouponModel(1, "This is a voucher.", "Org A"),
    CouponModel(2, "This is a voucher.", "Org A"),
    CouponModel(3, "This is a voucher.", "Org A"),
    CouponModel(1, "This is a voucher.", "Org A"),
    CouponModel(2, "This is a voucher.", "Org A"),
    CouponModel(3, "This is a voucher.", "Org A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _couponList.length,
              itemBuilder: (context, index) {
                final coupon = _couponList[index];

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
                    title: Text(
                      coupon.orgName,
                      style: ThemeDesign.titleStyle,
                    ),
                    subtitle: Wrap(
                      runSpacing: 20,
                      children: <Widget>[
                        Text(
                          coupon.voucherDescription,
                          style: ThemeDesign.descriptionStyle,
                        ),
                        Text(
                          "Valid until ${coupon.validUntilDate}",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    trailing: Wrap(
                      spacing: 12,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            color: ThemeDesign.appPrimaryColor,
                          ),
                          onPressed: () => CustomAlertDialog.showSuccess(context, "Share ${coupon.orgName}"),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete_forever,
                            color: ThemeDesign.appPrimaryColor,
                          ),
                          onPressed: () => CustomAlertDialog.showSuccess(context, "Delete ${coupon.orgName}"),
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
