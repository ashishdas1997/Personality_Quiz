
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore<=16){
      resultText='You are Awesome and innocent';
    }
    else if (resultScore<=24){
      resultText ='Pretty Likeable';
    }
    else if(resultScore<=32)
      {
        resultText='You are strange';
      }
    else {
      resultText='You are evil';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,

            ),
              textAlign: TextAlign.center,
            ),
            FlatButton(textColor: Colors.green,
              child: Text('Restart Quiz'), onPressed: resetHandler ,
            )
          ],
        ),
      ),
    );
  }
}
