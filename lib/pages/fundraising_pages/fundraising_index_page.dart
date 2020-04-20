import 'package:flutter/material.dart';

import './../../models/fundraising_models.dart';
import './../../pages/fundraising_pages/fundraising_details_page.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_alert_dialog.dart';
import './../../helpers/extension_functions.dart';

class FundraisingIndexPage extends StatefulWidget {
  @override
  _FundraisingIndexPageState createState() => _FundraisingIndexPageState();
}

class _FundraisingIndexPageState extends State<FundraisingIndexPage> {
  final _fundraisingList = <FundraisingModel>[
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
    FundraisingModel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _fundraisingList.length,
              itemBuilder: (context, index) {
                final fundraising = _fundraisingList[index];

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
                      fundraising.imageBase64.toImage(),
                      width: 80,
                      height: 80,
                    ),
                    title: Text(
                      fundraising.fundraisingName,
                      style: ThemeDesign.titleStyle,
                    ),
                    subtitle: Wrap(
                      runSpacing: 20,
                      children: <Widget>[
                        Text(
                          fundraising.fundraisingDescription,
                          style: ThemeDesign.descriptionStyle,
                        ),
                        Text(
                          "Valid until ${fundraising.validUntilDate}",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    trailing: Wrap(
                      spacing: 12,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            color: ThemeDesign.appPrimaryColor,
                          ),
                          onPressed: () =>
                              CustomAlertDialog.show(context, "Share ${fundraising.fundraisingDescription}"),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FundraisingDetailsPage(
                            fundraising: fundraising,
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
    );
  }
}
