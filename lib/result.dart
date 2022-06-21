import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function() q;
  final resultScore;
  Result(this.q, this.resultScore);

  String get resultPhrase{
    String resultText;
    if(resultScore >=70){
      resultText="You Are Awesome";
    }
    else if (resultScore >=40){
      resultText ="Pretty likable";
    }
    else{
      resultText = "You Are So Bad";
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:  [
           Text(
             resultPhrase,
            style:const TextStyle(
                fontSize: 25.0
            ),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
              onPressed: q,
              child: const Text(
                "Restart the app",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
          )
        ],
      ),
    );
  }
}
