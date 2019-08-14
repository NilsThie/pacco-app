import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pacco_app/ownWidgets/NavigationBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _progess = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.9),
            child: Text(
              'Übersicht',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Texts('Hallo Nils!', 22, 80),
          Texts('Zalando', 20, 167),
          Texts('06.01.', 40, 193),
          Texts('Montag', 20, 250),
          Align(
            alignment: Alignment(0, 0.18),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'DETAILS',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),

          Positioned(
            top: 420,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              // child: ButtonBar(
              //   mainAxisSize: MainAxisSize.min,
              //   children: <Widget>[
              //     FlatButton(
              //       padding: EdgeInsets.all(1),
              //       child: Text('M'),
              //     ),
              //     FlatButton(
              //       child: Text('D'),
              //     ),
              //     FlatButton(
              //       child: Text('M'),
              //     ),
              //     FlatButton(
              //       child: Text('D'),
              //     ),
              //     FlatButton(
              //       child: Text('F'),
              //     ),
              //     FlatButton(
              //       child: Text('S'),
              //     ),
              //     FlatButton(
              //       child: Text('S'),
              //     ),
              //   ],
              // ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 510, left: 10),
            child: IconButton(
                icon: Icon(Icons.add_box),
                color: Colors.black26,
                onPressed: () {
                  _incrementCounter();
                }),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //  // child: Circle(),
          // ),

          Align(
            alignment: Alignment(0, -0.38),
            child: CircularPercentIndicator(
              radius: 180.0,
              lineWidth: 5.0,
              animation: true,
              percent: _progess,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white38,
              progressColor: Colors.white,
              animateFromLastPercent: true,
            ),
          ),
        ],
      ),
      bottomNavigationBar: new NavigationBar(),
    );
  }

  void _incrementCounter() {
    setState(() {
      _progess = (_progess + 10 / 100) % 1;
      print(_progess);
    });
  }
}

class Texts extends StatelessWidget {
  final String text;
  final double size;
  final double topAlign;

  const Texts(this.text, this.size, this.topAlign);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topAlign),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: Colors.white),
        ),
      ),
    );
  }
}
