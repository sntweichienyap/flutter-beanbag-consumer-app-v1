import 'package:flutter/material.dart';
import './../../widgets/custom_app_bar.dart';

class CouponRedeemByQRCodePage extends StatefulWidget {
  @override
  _CouponRedeemByQRCodePageState createState() => _CouponRedeemByQRCodePageState();
}

class _CouponRedeemByQRCodePageState extends State<CouponRedeemByQRCodePage> {
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
