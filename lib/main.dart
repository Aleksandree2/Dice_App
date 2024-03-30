import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(child: Text("Dice"))),
        body: DicePage()),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 6;
  int rightdice = 6;

  void RandomNum() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                RandomNum();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  RandomNum();
                },
                child: Image.asset('images/dice$rightdice.png')),
          ),
        ],
      ),
    );
  }
}
