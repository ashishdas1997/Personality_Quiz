import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex++;
    });

    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What's your favourite colour?",
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'Yellow', 'score': 1}
        ],
      },
      {
        'questionText': " What's your favorite animal?",
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 5},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Shark', 'score': 10},
        ],
      },
      {
        'questionText': " What's your favorite genre?",
        'answers': [
          {'text': 'Romance', 'score': 1},
          {'text': 'Thriller', 'score': 5},
          {'text': 'Horror', 'score': 3},
          {'text': 'Dark Humour', 'score': 10},
        ],
      },
      {
        'questionText': " Who do you think is a better Leader?",
        'answers': [
          {'text': 'Modi', 'score': 1},
          {'text': 'Trump', 'score': 5},
          {'text': 'Putin', 'score': 3},
          {'text': 'Kim Jong', 'score': 10},
        ],
      }
    ];

    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'Playfair Display',
            primaryColor: Colors.black,
            accentColor: Colors.teal),
        home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            backgroundColor: Colors.green,
              title: Text(
            'Personality Test',
            style: TextStyle(
                fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.w900),
          )),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions)
              : Result(totalScore, resetQuiz),
        ));
  }
}
