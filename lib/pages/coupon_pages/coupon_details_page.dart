import 'package:flutter/material.dart';

import './../../widgets/custom_alert_dialog.dart';
import './../../pages/coupon_pages/coupon_redemption_point_page.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_sized_box.dart';
import './../../models/coupon_models.dart';
import './../../widgets/custom_app_bar.dart';
import './../../helpers/common_extensions.dart';

class CouponDetailsPage extends StatefulWidget {
  final CouponModel coupon;

  CouponDetailsPage({Key key, @required this.coupon}) : super(key: key);

  @override
  _CouponDetailsPageState createState() => _CouponDetailsPageState();
}

class _CouponDetailsPageState extends State<CouponDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeDesign.appPrimaryColor100,
        appBar: CustomAppBar(
          title: "Coupon Details",
          showWidget: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.memory(
                widget.coupon.imageBase64.toImage(),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                height: 160,
              ),
              CustomSizedBox(),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  widget.coupon.orgName,
                  style: ThemeDesign.titleStyle,
                ),
                subtitle: Text(
                  widget.coupon.voucherDescription,
                  style: ThemeDesign.descriptionStyle,
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("REDEEM"),
                      textColor: ThemeDesign.buttonTextPrimaryColor,
                      color: ThemeDesign.buttonPrimaryColor,
                      onPressed: () => {
                        CustomAlertDialog.show(context, "Share ${widget.coupon.orgName}"),
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: ThemeDesign.appPrimaryColor,
                      ),
                      onPressed: () => CustomAlertDialog.show(context, "Redeem ${widget.coupon.orgName}"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                //height: MediaQuery.of(context).copyWith().size.height * 0.5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.coupon.orgName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ThemeDesign.titleFontSize,
                      ),
                    ),
                    CustomSizedBox(),
                    Text(
                      "Valid Until",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ThemeDesign.titleFontSize,
                      ),
                    ),
                    Text(
                      widget.coupon.validUntilDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ThemeDesign.titleFontSize,
                      ),
                    ),
                    CustomSizedBox(),
                    Text(
                      "Terms and Conditions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ThemeDesign.titleFontSize,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.coupon.tncItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          widget.coupon.tncItems[index],
                          style: TextStyle(fontSize: ThemeDesign.descriptionFontSize),
                        );
                      },
                    ),
                    CustomSizedBox(),
                    Card(
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
                        title: Text(
                          "Redemption Points",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ThemeDesign.titleFontSize,
                          ),
                        ),
                        subtitle: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.coupon.redemptionPointItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(
                              widget.coupon.redemptionPointItems[index].name,
                              style: TextStyle(fontSize: ThemeDesign.descriptionFontSize),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CouponRedemptionPointPage(
                                coupon: widget.coupon,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
