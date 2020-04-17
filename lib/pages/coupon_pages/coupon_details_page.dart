import 'package:flutter/material.dart';
import './../../widgets/custom_app_bar.dart';

class CouponDetailsPage extends StatefulWidget {
  @override
  _CouponDetailsPageState createState() => _CouponDetailsPageState();
}

class _CouponDetailsPageState extends State<CouponDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Coupon Details",
        showWidget: false,
      ),
      body: Center(
        child: Text('Coming soon.'),
      ),
    );
  }
}
