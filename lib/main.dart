import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnum = 6;
  int rightnum = 1;
  void NumChang() {
    setState(() {
      leftnum = Random().nextInt(6) + 1;
      rightnum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: NumChang,
              child: Image.asset('images/dice$leftnum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: NumChang,
              child: Image.asset('images/dice$rightnum.png'),
            ),
          ),
        ]),
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
