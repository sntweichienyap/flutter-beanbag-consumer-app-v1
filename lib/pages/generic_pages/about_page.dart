import 'package:flutter/material.dart';
import 'package:flutter_beanbag_consumer_app_v1/resources/theme_designs.dart';
import 'package:flutter_beanbag_consumer_app_v1/widgets/custom_loading_page.dart';
import 'package:package_info/package_info.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: FutureBuilder<String>(
        future: _getVersionInfo(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (!snapshot.hasData) {
            return CustomLoadingPage();
          } else {
            return Center(
              child: Text(
                'Version ${snapshot.data}',
                style: ThemeDesign.titleStyle,
              ),
            );
          }
        },
      ),
    );
  }

  Future<String> _getVersionInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }
}
