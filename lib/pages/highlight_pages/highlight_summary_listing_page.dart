import 'package:flutter/material.dart';

import './highlight_new_listing_page.dart';
import './highlight_popular_listing_page.dart';
import './../../models/coupon_models.dart';
import './../../widgets/custom_text.dart';
import './../../pages/shared_widgets/coupon_listing_widget.dart';

class HighlightSummaryListingPage extends StatefulWidget {
  @override
  _HighlightSummaryListingPageState createState() => _HighlightSummaryListingPageState();
}

class _HighlightSummaryListingPageState extends State<HighlightSummaryListingPage> {
  final _newHighlightList = <CouponModel>[
    CouponModel(1, "This is a voucher.", "Org A"),
    CouponModel(2, "This is a voucher.", "Org A"),
    CouponModel(3, "This is a voucher.", "Org A"),
  ];
  final _popularHighlightList = <CouponModel>[
    CouponModel(4, "This is a voucher.", "Org B"),
    CouponModel(5, "This is a voucher.", "Org B"),
    CouponModel(6, "This is a voucher.", "Org B"),
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
                "MOST POPULAR",
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
      ),
    );
  }
}
