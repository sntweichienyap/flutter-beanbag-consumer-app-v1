import 'package:flutter/material.dart';

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
          actions: widgets,
        ));

    //                AppBar(
    // title: title,
    // backgroundColor: backgroundColor,
    // actions: widgets,
    //);
  }
}

//CHIEN: delete if not using