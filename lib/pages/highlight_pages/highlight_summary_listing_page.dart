import 'package:flutter/material.dart';
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
        body: ListView(
          children: <Widget>[
            CustomText(
              "MOST POPULAR",
              marginTop: 15,
            ),
            CustomText(
              "NEW",
            ),
          ],
        ));
  }
}
