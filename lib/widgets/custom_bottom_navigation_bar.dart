import 'package:flutter/material.dart';

import './../resources/theme_designs.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud_download),
          title: Text('DOWNLOAD'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          title: Text('COUPONS'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          title: Text('FUNDRAISING'),
        ),
      ],
      currentIndex: _bottomNavigationBarIndex,
      selectedItemColor: Colors.black,
      backgroundColor: ThemeDesign.appPrimaryColor,
      unselectedItemColor: Colors.white,
      onTap: _onTabTapped,
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _bottomNavigationBarIndex = index;
    });
  }
}
