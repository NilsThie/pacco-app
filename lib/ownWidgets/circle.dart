import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animator/animator.dart';


class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaticCircle(),
    );
  
  }
}

class StaticCircle extends StatelessWidget {
  const StaticCircle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/runderkreisfürnils2.o.png'))),
      ),
    );
  }
}
