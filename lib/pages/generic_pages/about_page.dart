import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

import './../../widgets/custom_drawer.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    String version = "1.0.0";

    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      version = packageInfo.version;
    });

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Text('Version $version'),
      ),
    );
  }
}