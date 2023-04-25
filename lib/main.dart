import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Center(
              child: Text(
            'Dicee',
          )),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dicel = 1;
  int dicer = 1;

  void diceface(){
    setState(() {
      dicel = Random().nextInt(6) + 1;
      dicer = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                   diceface ();
                  },
                  child: Image.asset('images/dice$dicel.png'))),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceface();
              },
              child: Image.asset('images/dice$dicer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
