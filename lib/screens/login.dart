import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pacco Screens iPhone 6.png'),
          ),
          /*
          gradient: LinearGradient(
            begin: const Alignment(0.0, -0.1),
            end: const Alignment(0.0, 0.6),
            colors:[
              const Color(0xffef5350),
              const Color(0x00ef5350)
            ],*/
          ),
              
      );
    
  }
}

