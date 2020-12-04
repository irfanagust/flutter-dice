import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
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
  int leftNumberDice = 1;
  int rightNumberDice = 1;
  void changeDice(){
    setState(() {
      leftNumberDice = Random().nextInt(6)+1;
      rightNumberDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset('images/dice$leftNumberDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightNumberDice.png'),
              onPressed: (){
                changeDice();
              },
            ),
          )
        ],
      ),
    );
  }
}