import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //passed into widget from outside
  Question(this.questionText); //constructor
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Colors.redAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
