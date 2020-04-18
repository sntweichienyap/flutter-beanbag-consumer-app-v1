import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';

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
              Row(
                children: <Widget>[],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                height: MediaQuery.of(context).copyWith().size.height * 0.5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Terms and Conditions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Text(widget.coupon.tnc),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
