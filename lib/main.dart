import 'package:flutter/material.dart';
import 'package:test_project/Quiz.dart';
import 'package:test_project/answer.dart';
import 'package:test_project/result.dart';
import 'quistion.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _quistionIndex = 0;
  int totalScore=0;

  bool isSwitched = false;

  void resetApp(){
    setState(() {
      _quistionIndex=0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score){

    totalScore +=score;
    setState(() {
      _quistionIndex +=1;
    });

  }

  final List<Map<String, Object>> _quistion = [
    {
      'questionText':'what\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text':'green', 'score':20},
        {'text':'blue', 'score':30},
        {'text':'red', 'score':40}
      ]
    },
    {
      'questionText':'what\'s your favorite animal?',
      'answers':[
        {'text':'Rabbit', 'score': 10},
        {'text':'lion', 'score':20},
        {'text':'cat', 'score':30},
        {'text':'elephant', 'score':40}
      ]
    },
    {
      'questionText':'what\'s your favorite team',
      'answers':[
        {'text':'ahly', 'score':10},
        {'text':'zamalek', 'score':20},
        {'text':'barca', 'score':30},
        {'text':'madrid', 'score':40}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
              'Quiz App'
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: null,
            ),
          ],
        ),
        body: Container(
          //width: double.infinity,
          margin: const EdgeInsets.all(10.0),
          child:_quistionIndex<_quistion.length?
              Quiz(_quistion, _quistionIndex, answerQuestion)
              : Result(resetApp, totalScore),

        ),
      ),
    );
  }
}
