import 'package:flutter/material.dart';
import 'dart:math';

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
  var leftnumber = 1;
  var rightnumber = 1;
  void changefaces() {
    setState(() {
      rightnumber = Random().nextInt(6) + 1;
      leftnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightnumber = Random().nextInt(6) + 1;
                  leftnumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightnumber = Random().nextInt(6) + 1;
                  leftnumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
