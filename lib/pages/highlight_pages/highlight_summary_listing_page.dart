import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/pages/highlight_pages/highlight_popular_listing_page.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_text.dart';

import './../../models/highlight_models.dart';

class HighlightSummaryListingPage extends StatefulWidget {
  @override
  _HighlightSummaryListingPageState createState() => _HighlightSummaryListingPageState();
}

class _HighlightSummaryListingPageState extends State<HighlightSummaryListingPage> {
  final _newHighlightList = <HighlightModel>[
    HighlightModel(1, "This is a voucher.", "Org A"),
    HighlightModel(2, "This is a voucher.", "Org A"),
    HighlightModel(3, "This is a voucher.", "Org A"),
  ];
  final _popularHighlightList = <HighlightModel>[
    HighlightModel(4, "This is a voucher.", "Org A"),
    HighlightModel(5, "This is a voucher.", "Org A"),
    HighlightModel(6, "This is a voucher.", "Org A"),
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

                  return _formatVoucher(item);
                },
              ),
              CustomText(
                "NEW",
                marginTop: 15,
                fontSize: 22,
                textAlign: TextAlign.center,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _newHighlightList.length,
                itemBuilder: (context, index) {
                  final item = _newHighlightList[index];

                  return _formatVoucher(item);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }

  Widget _formatVoucher(HighlightModel item) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)),
          side: BorderSide(width: 2, color: ThemeDesign.appPrimaryColor)),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(
          "lib/assets/images/picture_sample.png",
          width: 80,
          height: 80,
        ),
        title: CustomText(
          item.orgName,
          fontSize: 18,
        ),
        subtitle: Text(item.voucherDescription),
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            Icon(
              Icons.share,
              color: ThemeDesign.appPrimaryColor,
            ),
            Icon(
              Icons.file_download,
              color: ThemeDesign.appPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
