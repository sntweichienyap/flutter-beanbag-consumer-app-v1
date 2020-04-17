import 'package:flutter/material.dart';

import './../../models/coupon_models.dart';
import './../../widgets/custom_text.dart';
import './../../pages/shared_widgets/coupon_listing_widget.dart';

class HighlightPopularListingPage extends StatefulWidget {
  @override
  _HighlightPopularListingPageState createState() => _HighlightPopularListingPageState();
}

class _HighlightPopularListingPageState extends State<HighlightPopularListingPage> {
  final _popularHighlightList = <CouponModel>[
    CouponModel(1, "This is a voucher.", "Org B"),
    CouponModel(2, "This is a voucher.", "Org B"),
    CouponModel(3, "This is a voucher.", "Org B"),
    CouponModel(4, "This is a voucher.", "Org B"),
    CouponModel(5, "This is a voucher.", "Org B"),
    CouponModel(6, "This is a voucher.", "Org B"),
    CouponModel(7, "This is a voucher.", "Org B"),
    CouponModel(8, "This is a voucher.", "Org B"),
    CouponModel(9, "This is a voucher.", "Org B"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Highlights"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HighlightPopularListingPage(),
                      ));
                },
                child: CustomText(
                  "ALL MOST POPULAR",
                  marginTop: 15,
                  fontSize: 22,
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _popularHighlightList.length,
                itemBuilder: (context, index) {
                  final item = _popularHighlightList[index];

                  return CouponListingWidget(item);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
