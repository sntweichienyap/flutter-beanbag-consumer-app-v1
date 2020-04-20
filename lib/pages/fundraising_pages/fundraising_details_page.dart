import 'package:flutter/material.dart';

import './../../pages/coupon_pages/coupon_details_page.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_alert_dialog.dart';
import './../../widgets/custom_app_bar.dart';
import './../../widgets/custom_sized_box.dart';
import './../../helpers/extension_functions.dart';
import './../../models/fundraising_models.dart';

class FundraisingDetailsPage extends StatefulWidget {
  final FundraisingModel fundraising;

  FundraisingDetailsPage({Key key, @required this.fundraising}) : super(key: key);

  @override
  _FundraisingDetailsPageState createState() => _FundraisingDetailsPageState();
}

class _FundraisingDetailsPageState extends State<FundraisingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDesign.appPrimaryColor100,
      appBar: CustomAppBar(
        title: "Fundraising Details",
        showWidget: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.memory(
              widget.fundraising.imageBase64.toImage(),
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              height: 160,
            ),
            CustomSizedBox(),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                widget.fundraising.fundraisingName,
                style: ThemeDesign.titleStyle,
              ),
              subtitle: Text(
                "${widget.fundraising.address} \n ${widget.fundraising.contactNo}",
                style: ThemeDesign.descriptionStyle,
                maxLines: 3,
              ),
              trailing: Wrap(
                spacing: 12,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.share,
                        color: ThemeDesign.appPrimaryColor,
                      ),
                      onPressed: () {
                        CustomAlertDialog.showSuccess(context, "Share ${widget.fundraising.fundraisingName}");
                      })
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Fundraising Purpose",
                    style: ThemeDesign.titleStyle,
                  ),
                  Text(
                    widget.fundraising.purpose,
                    style: ThemeDesign.descriptionStyle,
                  ),
                  CustomSizedBox(),
                  Text(
                    "Amount to be Raised",
                    style: ThemeDesign.titleStyle,
                  ),
                  Text(
                    widget.fundraising.raisedAmount,
                    style: ThemeDesign.descriptionStyle,
                  ),
                  CustomSizedBox(),
                  Text(
                    "End Date",
                    style: ThemeDesign.titleStyle,
                  ),
                  Text(
                    widget.fundraising.campaignEndDate,
                    style: ThemeDesign.descriptionStyle,
                  ),
                  CustomSizedBox(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.fundraising.couponItems.length,
                    itemBuilder: (context, index) {
                      final _coupon = widget.fundraising.couponItems[index];

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
                          leading: Image.memory(
                            _coupon.imageBase64.toImage(),
                            width: 80,
                            height: 80,
                          ),
                          title: Text(
                            _coupon.orgName,
                            style: ThemeDesign.titleStyle,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _coupon.couponDescription,
                                style: ThemeDesign.descriptionStyle,
                              ),
                              CustomSizedBox(),
                              Text(
                                "Valid until ${_coupon.validUntilDate}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CouponDetailsPage(
                                  coupon: _coupon,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
