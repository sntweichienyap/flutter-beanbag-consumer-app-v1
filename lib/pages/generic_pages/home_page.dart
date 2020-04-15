import 'package:flutter/material.dart';

import './../../widgets/custom_bottom_navigation_bar.dart';
import './../../widgets/custom_drawer.dart';
import './../../widgets/custom_app_bar.dart';
import './../../pages/download_pages/download_index_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CustomDrawer(),
      // appBar: CustomAppBar(
      //   title: "BeanBag",
      // ),
      body: Center(
        child: Text('Coming soon.0'),
      ),
    );
  }
}
