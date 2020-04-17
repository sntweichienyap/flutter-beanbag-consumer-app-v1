import 'package:flutter/material.dart';

import './../../models/coupon_models.dart';
import './../../widgets/custom_text.dart';
import './../../pages/shared_widgets/coupon_listing_widget.dart';

class HighlightNewListingPage extends StatefulWidget {
  @override
  _HighlightNewListingPageState createState() => _HighlightNewListingPageState();
}

class _HighlightNewListingPageState extends State<HighlightNewListingPage> {
  final _newHighlightList = <CouponModel>[
    CouponModel(1, "This is a voucher.", "Org A"),
    CouponModel(2, "This is a voucher.", "Org A"),
    CouponModel(3, "This is a voucher.", "Org A"),
    CouponModel(4, "This is a voucher.", "Org A"),
    CouponModel(5, "This is a voucher.", "Org A"),
    CouponModel(6, "This is a voucher.", "Org A"),
    CouponModel(7, "This is a voucher.", "Org A"),
    CouponModel(8, "This is a voucher.", "Org A"),
    CouponModel(9, "This is a voucher.", "Org A"),
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
                        builder: (BuildContext context) => HighlightNewListingPage(),
                      ));
                },
                child: CustomText(
                  "NEW",
                  marginTop: 15,
                  fontSize: 22,
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _newHighlightList.length,
                itemBuilder: (context, index) {
                  final item = _newHighlightList[index];

                  return CouponListingWidget(item);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
