import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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
  int leftDieNumber;
  int rightDieNumber;

  @override
  Widget build(BuildContext context) {
    leftDieNumber = randomNumber();
    rightDieNumber = randomNumber();
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      rollDice();
                    },
                  );
                },
                child: Image.asset('images/dice$leftDieNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$rightDieNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  rollDice() {
    setState(() {
      leftDieNumber = randomNumber();
      rightDieNumber = randomNumber();
    });
  }

  randomNumber() {
    return Random().nextInt(6) + 1;
  }
}
