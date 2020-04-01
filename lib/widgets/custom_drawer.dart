import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';

import './../pages/generic_pages/about_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorWhite = Colors.white;

    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 50),
        color: ThemeDesign.appPrimaryColor,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("HISTORY"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: colorWhite,
              ),
              title: Text(
                "ACCOUNT",
                style: TextStyle(color: colorWhite),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("WE SUPPORT"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("ABOUT"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.navigate_before),
              title: Text("LOGOUT"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
