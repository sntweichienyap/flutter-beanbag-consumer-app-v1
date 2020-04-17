import 'package:flutter/material.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedeemBySwipePage extends StatefulWidget {
  @override
  _CouponRedeemBySwipePageState createState() => _CouponRedeemBySwipePageState();
}

class _CouponRedeemBySwipePageState extends State<CouponRedeemBySwipePage> {
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
