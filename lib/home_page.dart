import 'dart:html';
import 'dart:js_util';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Тапшырма-05",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
      body: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceApp();
}

class _DiceApp extends State<DiceApp> {
  int rightNum = 5;
  int leftNum = 1;

  void change() {
    Random random = Random();
    setState(() {
      rightNum = random.nextInt(6) + 1;
      leftNum = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: change,
                    child: Image.asset(
                      "assets/images/dice_$leftNum.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: InkWell(
                    onTap: change,
                    child: Image.asset(
                      "assets/images/dice_$rightNum.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ])),
    );
  }
}
