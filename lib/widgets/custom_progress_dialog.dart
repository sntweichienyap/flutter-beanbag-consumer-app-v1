import 'package:flutter/material.dart';
import './../helpers/extension_functions.dart';

class CustomeProgressDialog {
  static show(BuildContext context, {String title = ""}) {
    try {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: AlertDialog(
                content: title.isStringEmpty()
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                            CircularProgressIndicator(),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                            ),
                            Flexible(
                                flex: 8,
                                child: Text(
                                  title,
                                  style: TextStyle(fontSize: 16),
                                )),
                          ]),
              ),
            );
          });
    } catch (e) {
      print(e.toString());
    }
  }

  static hide(BuildContext context) {
    Navigator.pop(context);
  }
}
