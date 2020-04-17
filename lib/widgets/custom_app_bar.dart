import 'package:flutter/material.dart';

import './../pages/highlight_pages/highlight_summary_listing_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> widgets;
  final double size;
  final bool showWidget;

  const CustomAppBar({Key key, this.title = "", this.size = 56.0, this.showWidget = true, this.widgets})
      : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(size);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(size),
        child: AppBar(
          title: Text(title),
          actions: <Widget>[
            showWidget
                ? IconButton(
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
                : Container()
          ],
          //actions: widgets,
        ));
  }
}
