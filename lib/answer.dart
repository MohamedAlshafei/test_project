import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function() x;

  Answer(this.x, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
        ),
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 25.0
          ),
        ),
        onPressed: x,
      ),
    );
  }
}
