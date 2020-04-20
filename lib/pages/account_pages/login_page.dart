import 'dart:async';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import './register_page.dart';
import './forgot_password_page.dart';
import './../../enums/generic_enum.dart';
import './../../widgets/custom_progress_dialog.dart';
import './../../resources/theme_designs.dart';
import './../../helpers/extension_functions.dart';
import './../../pages/generic_pages/bottom_navigation_bar_page.dart';
import './../../helpers/local_shared_preferences.dart';
import './../../widgets/custom_app_bar.dart';

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
          title: "Login",
          size: 0,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 80),
            Image.asset(
              "lib/assets/images/logo_beanbag.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.only(left: ThemeDesign.emptySpacePadding, right: ThemeDesign.emptySpacePadding),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onSaved: (value) => _email = value,
                      initialValue: "abc@abc.com",
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: "Email Address"),
                      validator: (value) {
                        var isValidEmail = EmailValidator.validate(value);

                        if (!isValidEmail) {
                          return "Please enter valid email.";
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      onSaved: (value) => _password = value,
                      initialValue: "abc123",
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password"),
                      validator: (value) {
                        if (value.isStringEmpty()) {
                          return "Please enter valid password.";
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      width: double.infinity,
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

                              Timer(Duration(seconds: 2), () {
                                LocalSharedPreferences.setValue(StorageEnum.email, _email);
                                LocalSharedPreferences.setValue(StorageEnum.userID, "1");

                                CustomeProgressDialog.hide(context);

                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => BottomNavigationBarPage()),
                                  (Route<dynamic> route) => false,
                                );
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
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  textColor: Colors.grey,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                Spacer(),
                FlatButton(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
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
