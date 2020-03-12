import 'package:flutter/material.dart';
import 'dart:math';

void main() {

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
  int leftDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber=5;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'
                ),
              ),
            ),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  print('Right button Pressed');
                },
                child: Image.asset('images/dice1.png'
                ),
              ),
            ),
        ),
        ],
      ),
    );
  }
}