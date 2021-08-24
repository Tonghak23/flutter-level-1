import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

  class MyHomeScreen extends StatefulWidget {
    const MyHomeScreen({Key? key}) : super(key: key);
  
    @override
    _MyHomeScreenState createState() => _MyHomeScreenState();
  }
  
  class _MyHomeScreenState extends State<MyHomeScreen> {
    @override
    Widget build(BuildContext context) {
      final emailField = TextField(
        autocorrect: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      );
      final passwordField = TextField(
        autocorrect: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      );
      final LoginButton = Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white70,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent[400],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: MaterialButton(
              onPressed: (){},
              minWidth: MediaQuery.of(context).size.width,
              padding:  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              child: Container(
                  child: Text("Login",textAlign: TextAlign.center),
              ),
          ),
        ),
      );
      return Scaffold(
        body: Center(
          child: Container(
            color: Colors.blueAccent[300],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 45.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  LoginButton,
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
