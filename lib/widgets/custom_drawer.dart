import 'package:flutter/material.dart';

import 'custom_progress_dialog.dart';
import './../pages/account_pages/account_details_page.dart';
import './../pages/account_pages/login_page.dart';
import './../pages/generic_pages/supported_merchant.dart';
import './../pages/transaction_history_pages/transaction_history_listing_page.dart';
import './../pages/generic_pages/about_page.dart';
import './../pages/generic_pages/bottom_navigation_bar_page.dart';
import './../resources/theme_designs.dart';
import './../helpers/local_shared_preferences.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _colorWhite = Colors.white;

    return Drawer(
      child: Container(
        color: ThemeDesign.appPrimaryColor,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Container(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  child: new Text('MENU',
                      style: TextStyle(
                        color: _colorWhite,
                        fontSize: 24,
                      )),
                ),
              ),
              new Padding(
                  padding: EdgeInsets.all(0.0),
                  child: new Divider(
                    thickness: 2,
                    color: _colorWhite,
                  )),
            ]),
            ListTile(
              leading: Icon(
                Icons.home,
                color: _colorWhite,
              ),
              title: Text(
                "HOME",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigationBarPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: _colorWhite,
              ),
              title: Text(
                "HISTORY",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => TransactionHistoryListingPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: _colorWhite,
              ),
              title: Text(
                "ACCOUNT",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AccountDetailsPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: _colorWhite,
              ),
              title: Text(
                "WE SUPPORT",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SupportedMerchantPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline,
                color: _colorWhite,
              ),
              title: Text(
                "ABOUT",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.navigate_before,
                color: _colorWhite,
              ),
              title: Text(
                "LOGOUT",
                style: TextStyle(color: _colorWhite),
              ),
              onTap: () async {
                CustomeProgressDialog.show(context);
                await LocalSharedPreferences.removeAll();
                CustomeProgressDialog.hide(context);

                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
