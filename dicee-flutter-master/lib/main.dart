import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total: ${leftDiceNumber + rightDiceNumber}',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              _leftDice(),
              _rightDice(),
            ],
          ),
        ],
      ),
    );
  }

  Expanded _leftDice() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: _throwDices,
          ),
        ],
      ),
    );
  }

  Expanded _rightDice() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: _throwDices,
          ),
        ],
      ),
    );
  }

  _throwDices() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
