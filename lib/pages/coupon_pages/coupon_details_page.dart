import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/models/coupon_models.dart';
import './../../widgets/custom_app_bar.dart';

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
      appBar: CustomAppBar(
        title: "Coupon Details",
        showWidget: false,
      ),
      body: Center(
        child: Text('Coming soon. ${widget.coupon.orgName}'),
      ),
    );
  }
}
