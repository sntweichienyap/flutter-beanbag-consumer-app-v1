import 'package:flutter/material.dart';

import './../pages/highlight_pages/highlight_summary_listing_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final List<Widget> widgets;
  final double size;

  const CustomAppBar({Key key, this.title, this.appBar, this.size = 56.0, this.widgets}) : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(size);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(size),
        child: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.stars,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HighlightSummaryListingPage(),
                    ));
              },
            )
          ],
          //actions: widgets,
        ));
  }
}
