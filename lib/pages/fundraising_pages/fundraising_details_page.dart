import 'package:flutter/material.dart';

import './../../widgets/custom_loading_page.dart';
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
      appBar: AppBar(
        title: Text("Fundraising Details"),
      ),
      body: CustomLoadingPage(),
    );
  }
}
