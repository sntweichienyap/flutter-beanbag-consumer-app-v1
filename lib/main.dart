import 'dart:async';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beanbag_consumer_app_v1/api_services/authentication_services.dart';
import 'resources/theme_designs.dart';
import './helpers/local_shared_preferences.dart';
import './enums/generic_enum.dart';

import './screens/account_screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: ThemeDesign.appPrimaryColor));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: ThemeDesign.appPrimaryColor,
        accentColor: ThemeDesign.appPrimaryColor300,
      ),
      home: LoginPage(),
    );

    // return MaterialApp(
    //   title: 'Startup Name Generator',
    //   theme: ThemeData(
    //     primaryColor: ThemeDesign.appPrimaryColor,
    //     accentColor: ThemeDesign.appPrimaryColor300,
    //   ),
    //   home: RandomWords(),
    // );
  }
}

/*
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>(); // Add this line.
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          var title = "Saved Suggestions";

          // return Scaffold(
          //   appBar: AppBar(
          //     title: Text('Saved Suggestions'),
          //   ),
          //   body: ListView(children: divided),
          // );

          return FutureBuilder<ValidateUserResponse>(
            future: _getUserDetails(), // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<ValidateUserResponse> snapshot) {
              if (snapshot.hasData) {
                title = snapshot.data.error;
              } else if (snapshot.hasError) {
                title = "${snapshot.error}";
              } else {}

              return Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(200.0), // here the desired height
                    child: AppBar(
                      title: Text(title),
                    )),
                body: Center( child: Image.asset("lib/assets/images/logo_beanbag.png")),//ListView(children: divided),
              );
            },
          );

          //return FutureBuilder<ValidateUserResponse>(future: result, builder: )
        },
      ),
    );
  }

  Future<ValidateUserResponse> _getUserDetails() async {
    var request = new ValidateUserRequest("abc@abc.com", "abc123", "");

    var result = await AuthenticationService.validateUserApi(request);

    return result;
  }
}
  */
