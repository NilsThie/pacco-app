import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 122, 80, 1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 1))
            ]),
      ),
    );
  }
}
