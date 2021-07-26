import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  //final keyword means the vlaue won't change after initialisations

  Quiz(
      //@ means it is compulsary
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']), //my question widget
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // spread operator, ... takes a list pull all the value out of it and add it to the surrounding list
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              //sending function and answer text
              () => answerQuestion(answer['score']),
              answer[
                  'text']); // when onpressed is clicked then only answerQuestions() is tiggered, I do hvae access to answer map
        }).toList()
      ],
    );
  }
}
