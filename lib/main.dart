import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma05_flutter/home_page.dart';

void main() {
  runApp(const BeshinchiTapshyrma());
}

class BeshinchiTapshyrma extends StatelessWidget {
  const BeshinchiTapshyrma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
