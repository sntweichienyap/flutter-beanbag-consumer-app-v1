import 'package:flutter/material.dart';

import './../../widgets/custom_app_bar.dart';
import './../../widgets/custom_loading_page.dart';

class TransactionHistoryListingPage extends StatefulWidget {
  @override
  _TransactionHistoryListingPageState createState() => _TransactionHistoryListingPageState();
}

class _TransactionHistoryListingPageState extends State<TransactionHistoryListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Transaction History",
        showWidget: false,
      ),
      body: CustomLoadingPage(),
    );
  }
}
