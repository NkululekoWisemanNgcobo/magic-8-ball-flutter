import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Magic8(),
        ),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
