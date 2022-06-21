import 'package:flutter/material.dart';

import 'answer.dart';
import 'quistion.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int quistionIndex;
  final Function(int s) answerQuestion;

  Quiz(this.question,this.quistionIndex,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(question[quistionIndex]['questionText'].toString()),
          //Answer(answerQuestion,['answer']),
          ...(question[quistionIndex]['answers'] as List<Map<String, Object>>).map((answer){
            return Answer(()=> answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());
          }).toList(),

        ],
      ),
    );
  }
}
