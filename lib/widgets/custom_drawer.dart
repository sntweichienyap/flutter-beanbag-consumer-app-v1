import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("HISTORY"),
            trailing: Icon(Icons.history),
          ),
          ListTile(
            title: Text("ACCOUNT"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("WE SUPPORT"),
            trailing: Icon(Icons.people),
          ),
          ListTile(
            title: Text("ABOUT"),
            trailing: Icon(Icons.info),
          ),
          ListTile(
            title: Text("LOGOUT"),
            trailing: Icon(Icons.offline_pin),
          ),
        ],
      ),
    );
  }
}
