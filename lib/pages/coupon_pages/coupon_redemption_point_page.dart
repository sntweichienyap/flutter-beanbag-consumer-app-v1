import 'package:flutter/material.dart';

import './../../widgets/custom_app_bar.dart';

class CouponRedemptionPointPage extends StatefulWidget {
  @override
  _CouponRedemptionPointPageState createState() => _CouponRedemptionPointPageState();
}

class _CouponRedemptionPointPageState extends State<CouponRedemptionPointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Redemption Points",
      ),
      body: Center(
        child: Text('Coming soon.'),
      ),
    );
  }
}
