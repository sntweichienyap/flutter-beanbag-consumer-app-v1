import 'package:flutter/material.dart';

import './../../models/supported_merchant_models.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_app_bar.dart';
import './../../helpers/common_extensions.dart';

class SupportedMerchantPage extends StatefulWidget {
  @override
  _SuportedMerchantPageState createState() => _SuportedMerchantPageState();
}

class _SuportedMerchantPageState extends State<SupportedMerchantPage> {
  final _supportedMerchantList = <SupportedMerchantModel>[
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
    SupportedMerchantModel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDesign.appPrimaryColor100,
      appBar: CustomAppBar(
        title: "Supported Merchants",
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: List.generate(
          _supportedMerchantList.length,
          (index) {
            return Center(
              child: _generateCard(_supportedMerchantList[index]),
            );
          },
        ),
      ),
    );
  }

  Widget _generateCard(SupportedMerchantModel supportedMerchant) {
    return Card(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.memory(
                  supportedMerchant.imageBase64.toImage(),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                )),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
