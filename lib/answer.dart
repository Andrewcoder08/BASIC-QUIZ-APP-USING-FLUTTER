import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String answerText;
  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            //foregroundColor: MaterialStateProperty.all<Color>(Colors.red)
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        child: Text(answerText),
        // style: TextStyle(color: Colors.blue),
        onPressed: selectHandeler,
      ),
    );
  }
}
