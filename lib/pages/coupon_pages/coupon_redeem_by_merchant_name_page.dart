import 'package:flutter/material.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedeemByMerchantNamePage extends StatefulWidget {
  @override
  _CouponRedeemByMerchantNamePageState createState() => _CouponRedeemByMerchantNamePageState();
}

class _CouponRedeemByMerchantNamePageState extends State<CouponRedeemByMerchantNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Redeem",
      ),
      body: Center(
        child: Text('Coming soon.'),
      ),
    );
  }
}
