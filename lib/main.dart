import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacco_app/screens/login.dart';
import 'package:pacco_app/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cursorColor: Colors.white,
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: Colors.white
        ),
        primarySwatch: Colors.brown,
        fontFamily: 'Poppins',
        textSelectionColor: Colors.white,
        textSelectionHandleColor: Colors.white,
        primaryColor: Colors.white,
        primaryColorLight: Colors.white,
        unselectedWidgetColor: Colors.white,
        accentColor: Colors.white,
        
      ),
      home: Home(),
    );
  }
}


