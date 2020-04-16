import 'package:flutter/material.dart';
import './../resources/theme_designs.dart';

class CustomAlertDialog {
  static show(BuildContext context, String content, {String title = "", String closeButtonText = "OK"}) {
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
                title: Text(title),
                content: Text(content),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                actions: <Widget>[
                  FlatButton(
                    child: Text(closeButtonText),
                    textColor: ThemeDesign.appPrimaryColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          });
    } catch (e) {
      print(e.toString());
    }
  }
}
