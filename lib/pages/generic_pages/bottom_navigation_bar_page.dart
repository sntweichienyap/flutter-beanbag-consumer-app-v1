import 'package:flutter/material.dart';

import 'home_page.dart';
import './../../pages/coupon_pages/coupon_index_page.dart';
import './../../pages/download_pages/download_index_page.dart';
import './../../pages/fundraising_pages/fundraising_index_page.dart';
import './../../resources/theme_designs.dart';
import './../../widgets/custom_app_bar.dart';
import './../../widgets/custom_drawer.dart';


class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  String _appBarTitle = "BeanBag";
  List<Widget> _pages = <Widget>[HomePage(), DownloadIndexPage(), CouponIndexPage(), FundraisingIndexPage()];
  PageController pageController = PageController();

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      if (index == 1) {
        _appBarTitle = "Download";
      } else if (index == 2) {
        _appBarTitle = "Coupons";
      } else if (index == 3) {
        _appBarTitle = "Fundraising";
      } else {
        _appBarTitle = "BeanBag";
      }

      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: _appBarTitle,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: ThemeDesign.appPrimaryColor,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
