import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_sized_box.dart';
import './../../resources/theme_designs.dart';
import './../../models/coupon_models.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedemptionPointPage extends StatefulWidget {
  final CouponModel coupon;

  CouponRedemptionPointPage({Key key, @required this.coupon}) : super(key: key);

  @override
  _CouponRedemptionPointPageState createState() => _CouponRedemptionPointPageState();
}

class _CouponRedemptionPointPageState extends State<CouponRedemptionPointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeDesign.appPrimaryColor100,
        appBar: CustomAppBar(
          title: "Redemption Points",
          showWidget: false,
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.coupon.redemptionPointItems.length,
            itemBuilder: (context, index) {
              final item = widget.coupon.redemptionPointItems[index];

              return Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.name,
                      style: ThemeDesign.titleStyle,
                    ),
                    Text(
                      item.description,
                      style: ThemeDesign.descriptionStyle,
                    ),
                    Text(
                      item.contactNo,
                      style: ThemeDesign.descriptionStyle,
                    ),
                    CustomSizedBox(),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
