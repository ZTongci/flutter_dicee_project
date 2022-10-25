import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
        centerTitle: true,
      ),
      body: Dicee(),
    ),
  ));
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int LeftNumber = 6;
  int RightNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Changedice();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$LeftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  Changedice();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$RightNumber.png'),
                )),
          ),
        ],
      ),
    );
  }

  void Changedice() {
    setState(() {
      LeftNumber = Random().nextInt(6) + 1;
      RightNumber = Random().nextInt(6) + 1;
    });
  }
}
