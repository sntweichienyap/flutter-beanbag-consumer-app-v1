import 'dart:async';
import 'package:flutter/material.dart';

import './../../widgets/custom_app_bar.dart';
import './../../widgets/custom_progress_dialog.dart';
import './../../resources/theme_designs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _password;
  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: CustomAppBar(
          size: 0,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 80),
            Image.asset("lib/assets/images/logo_beanbag.png",
                width: MediaQuery.of(context).size.width, fit: BoxFit.contain),
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.only(left: ThemeDesign.emptySpacePadding, right: ThemeDesign.emptySpacePadding),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        onSaved: (value) => _email = value,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: "Email Address")),
                    TextFormField(
                        onSaved: (value) => _password = value,
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Password")),
                    SizedBox(height: 50.0),
                    SizedBox(
                      width: double.infinity, // match_parent
                      child: RaisedButton(
                          child: Text("LOGIN"),
                          textColor: ThemeDesign.buttonTextPrimaryColor,
                          color: ThemeDesign.buttonPrimaryColor,
                          onPressed: () {
                            final form = _formKey.currentState;
                            form.save();

                            // Validate will return true if is valid, or false if invalid.
                            if (form.validate()) {
                              CustomeProgressDialog.show(context);

                              Timer(Duration(seconds: 5), () {
                                print("$_email $_password");
                                CustomeProgressDialog.hide(context);
                              });
                            }
                          }),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text("Forgot Password"),
                  onPressed: () {},
                  textColor: Colors.grey,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                Spacer(),
                FlatButton(
                  child: Text("Register"),
                  onPressed: () {},
                  textColor: Colors.grey,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ],
            ),
          ],
        ));
  }
}
