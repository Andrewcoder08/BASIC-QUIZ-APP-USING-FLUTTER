import 'package:flutter/material.dart';
import './quiz.dart'; // in this quiz.dart file, we have our logic of quiz
import './result.dart'; // in this result.dart file we return our result

//void main() {
//runApp(MyApp());
//}
void main() => runApp(
    MyApp()); // runApp takes a widget we created and draws it on the screen,to be precise calls build method

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      // map
      'questionText': 'What agent you wanna play?',
      'answers': [
        // list of maps
        {'text': 'Sova', 'score': 10},
        {'text': 'Reyna', 'score': 5},
        {'text': 'Phoenix', 'score': 8},
        {'text': 'Sage', 'score': 5}
      ],
    },
    {
      'questionText': 'Who is the best initiator?',
      'answers': [
        {'text': 'Sova', 'score': 10},
        {'text': 'Breach', 'score': 5},
        {'text': 'Skye', 'score': 0},
      ],
    },
    {
      'questionText': 'Best Map?',
      'answers': [
        {'text': 'Haven', 'score': 10},
        {'text': 'Ascent', 'score': 9},
        {'text': 'Icebox', 'score': 5},
        {'text': 'Bind', 'score': 7},
        {'text': 'Split', 'score': 6}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  // this function resets thr quiz making total score and questionIndex to be 0
  void _resetQuiz() {
    // it will call the build method of myappState and find that now questionindex smaller than question length and will go to quiz
    setState(() {
      //setState() triggers re rendering only that part of ui
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

// this function calculates score
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1; // going to next question
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //scaffold is part of Material dart that provies us with basic layout
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion:
                    _answerQuestion, //sending function answerQuestion, index of question and our question list
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
