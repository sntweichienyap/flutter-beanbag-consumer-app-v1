import 'package:flutter/material.dart';

import './../../models/transaction_history_models.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_app_bar.dart';

class TransactionHistoryListingPage extends StatefulWidget {
  @override
  _TransactionHistoryListingPageState createState() => _TransactionHistoryListingPageState();
}

class _TransactionHistoryListingPageState extends State<TransactionHistoryListingPage> {
  final _transactionHistoryList = <TransactionHistoryModel>[
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
    TransactionHistoryModel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Transaction History",
        showWidget: false,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _transactionHistoryList.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                color: ThemeDesign.appPrimaryColor100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "COUPON",
                        style: ThemeDesign.descriptionStyle,
                      ),
                      Text(
                        "DATE \n TIME",
                        style: ThemeDesign.descriptionStyle,
                        maxLines: 3,
                      ),
                      Text(
                        "STATUS",
                        style: ThemeDesign.descriptionStyle,
                      ),
                    ],
                  ),
                ),
              );
            }

            final _transactionHistory = _transactionHistoryList[index - 1];
            return Card(
              color: index % 2 == 0 ? ThemeDesign.appPrimaryColor100 : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
                side: BorderSide(
                  width: 2,
                  color: ThemeDesign.appPrimaryColor,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _transactionHistory.couponName,
                      style: ThemeDesign.descriptionStyle,
                    ),
                    Text(
                      "${_transactionHistory.redeemDate} \n ${_transactionHistory.redeemTime}",
                      style: ThemeDesign.descriptionStyle,
                      maxLines: 3,
                    ),
                    Text(
                      _transactionHistory.statusName,
                      style: ThemeDesign.descriptionStyle,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
