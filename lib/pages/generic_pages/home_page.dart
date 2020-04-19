import 'package:flutter/material.dart';

import './../../widgets/custom_loading_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLoadingPage(),
    );
  }
}
