import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({
    Key key,
  }) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: _answer,
        ),
      ),
    );
  }

  void _answer() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
}
