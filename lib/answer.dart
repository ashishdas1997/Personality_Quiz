import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return
        Container(
            height: 80,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: 250,
            child:SizedBox(
              child: RaisedButton(
                elevation: 10,
                child: Text(answerText),
                textColor: Colors.white,
                color: Colors.green.shade400,
                onPressed: selectHandler,
              ),
            ) ,
        );
  }
}
