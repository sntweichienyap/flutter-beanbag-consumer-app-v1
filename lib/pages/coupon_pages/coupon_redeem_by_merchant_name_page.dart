import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/models/coupon_models.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedeemByMerchantNamePage extends StatefulWidget {
  final CouponModel coupon;

  CouponRedeemByMerchantNamePage({Key key, @required this.coupon}) : super(key: key);

  @override
  _CouponRedeemByMerchantNamePageState createState() => _CouponRedeemByMerchantNamePageState();
}

class _CouponRedeemByMerchantNamePageState extends State<CouponRedeemByMerchantNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Redeem",
        showWidget: false,
      ),
      body: Center(
        child: Text('Coming soon.1'),
      ),
    );
  }
}
