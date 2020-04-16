import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/pages/shared_pages/voucher_listing_page.dart';

import './../../models/highlight_models.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_text.dart';
import './../../widgets/custom_alert_dialog.dart';

class HighlightPopularListingPage extends StatefulWidget {
  @override
  _HighlightPopularListingPageState createState() => _HighlightPopularListingPageState();
}

class _HighlightPopularListingPageState extends State<HighlightPopularListingPage> {
  final _popularHighlightList = <HighlightModel>[
    HighlightModel(1, "This is a voucher.", "Org B"),
    HighlightModel(2, "This is a voucher.", "Org B"),
    HighlightModel(3, "This is a voucher.", "Org B"),
    HighlightModel(4, "This is a voucher.", "Org B"),
    HighlightModel(5, "This is a voucher.", "Org B"),
    HighlightModel(6, "This is a voucher.", "Org B"),
    HighlightModel(7, "This is a voucher.", "Org B"),
    HighlightModel(8, "This is a voucher.", "Org B"),
    HighlightModel(9, "This is a voucher.", "Org B"),
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

                  return VoucherListingPage(item.orgName, item.voucherDescription);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
