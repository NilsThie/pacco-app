import 'package:flutter/material.dart';
import 'package:pacco_app/ownWidgets/circle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 20, bottom: 10),
                child: Text(
                  'Übersicht',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Hallo Nils!',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white
                ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Circle(),
              ),
              Text('testestestr')
            ],
          ),
        ),
      ),
    );
  }
}
