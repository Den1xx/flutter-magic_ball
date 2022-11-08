import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: Text('Ask the ball'),
      ),
      body: magic_ball(),
    ),
  ));
}

class magic_ball extends StatefulWidget {
  const magic_ball({Key? key}) : super(key: key);

  @override
  State<magic_ball> createState() => _magic_ballState();
}

class _magic_ballState extends State<magic_ball> {
  int answerno = 1;
  void changeAnswer(){
    setState(() {
      answerno = Random().nextInt(5)+1;
      print('magic ball has answered to your question');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeAnswer();
              },
              child: Image.asset('images/ball$answerno.png'),
            ),
          ),
        ],
      ),
    );
  }
}

