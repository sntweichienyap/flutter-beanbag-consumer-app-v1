import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/models/coupon_models.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedeemBySwipePage extends StatefulWidget {
  final CouponModel coupon;

  CouponRedeemBySwipePage({Key key, @required this.coupon}) : super(key: key);

  @override
  _CouponRedeemBySwipePageState createState() => _CouponRedeemBySwipePageState();
}

class _CouponRedeemBySwipePageState extends State<CouponRedeemBySwipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Redeem",
        showWidget: false,
      ),
      body: Center(
        child: Text('Coming soon.3'),
      ),
    );
  }
}
