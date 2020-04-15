import 'package:flutter/material.dart';

import './../../widgets/custom_bottom_navigation_bar.dart';

class DownloadIndexPage extends StatefulWidget {
  @override
  _DownloadIndexPageState createState() => _DownloadIndexPageState();
}

class _DownloadIndexPageState extends State<DownloadIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download"),
      ),
      body: Center(
        child: Text('Coming soon.'),
      ),
            bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
