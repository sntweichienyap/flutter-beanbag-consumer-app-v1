import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';

import './../pages/generic_pages/about_page.dart';

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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                  (Route<dynamic> route) => false,
                );
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
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
