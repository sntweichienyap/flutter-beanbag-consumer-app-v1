import 'package:flutter/material.dart';

class HighlightNewListingPage extends StatefulWidget {
  @override
  _HighlightNewListingPageState createState() => _HighlightNewListingPageState();
}

class _HighlightNewListingPageState extends State<HighlightNewListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Highlights"),
      ),
      body: Center(
        child: Text('Coming soon.'),
      ),
    );
  }
}
