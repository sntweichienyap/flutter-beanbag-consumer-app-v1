import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/pages/shared_pages/voucher_listing_page.dart';

import './../../models/highlight_models.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_text.dart';
import './../../widgets/custom_alert_dialog.dart';

class HighlightNewListingPage extends StatefulWidget {
  @override
  _HighlightNewListingPageState createState() => _HighlightNewListingPageState();
}

class _HighlightNewListingPageState extends State<HighlightNewListingPage> {
  final _newHighlightList = <HighlightModel>[
    HighlightModel(1, "This is a voucher.", "Org A"),
    HighlightModel(2, "This is a voucher.", "Org A"),
    HighlightModel(3, "This is a voucher.", "Org A"),
    HighlightModel(4, "This is a voucher.", "Org A"),
    HighlightModel(5, "This is a voucher.", "Org A"),
    HighlightModel(6, "This is a voucher.", "Org A"),
    HighlightModel(7, "This is a voucher.", "Org A"),
    HighlightModel(8, "This is a voucher.", "Org A"),
    HighlightModel(9, "This is a voucher.", "Org A"),
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

                  return VoucherListingPage(item.orgName, item.voucherDescription);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
