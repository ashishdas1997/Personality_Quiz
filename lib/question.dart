import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.amber,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
