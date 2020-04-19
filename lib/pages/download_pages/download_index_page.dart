import 'package:flutter/material.dart';

import './../../widgets/custom_loading_page.dart';

class DownloadIndexPage extends StatefulWidget {
  @override
  _DownloadIndexPageState createState() => _DownloadIndexPageState();
}

class _DownloadIndexPageState extends State<DownloadIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLoadingPage(),
    );
  }
}
