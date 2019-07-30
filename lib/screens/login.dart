import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pacco_app/screens/home.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Pacco Screens iPhone 6.png'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                  child: Text(
                    'Melde dich gleich an!',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0)),
              Container(
                padding: EdgeInsets.fromLTRB(60, 180, 60, 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (input) {
                          if (input.isEmpty & !input.contains('@')) {
                            return 'Bitte Email-Adresse eingeben';
                          }
                        },
                        onSaved: (input) => _email = input,
                        decoration: InputDecoration(
                            labelText: 'E-Mail',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0))),
                      ),
                      TextFormField(
                        style: new TextStyle(color: Colors.white),
                        validator: (input) {
                          if (input.length < 6) {
                            return 'Bitte längeres Passwort';
                          }
                        },
                        onSaved: (input) => _email = input,
                        decoration: InputDecoration(
                          labelText: 'Passwort',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                        ),
                        obscureText: true,
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: logIn,
                            child: Text(
                              'Anmelden',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 122, 80, 1)),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            //padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                            splashColor: Color.fromRGBO(255, 122, 80, 1),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void logIn() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password));
        print('login');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } catch (e) {
        print(e.message);
        print('failed');
      }
    }
  }
}
