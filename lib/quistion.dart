import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String quistionText;

   Question(this.quistionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            quistionText,
            style: const TextStyle(
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
