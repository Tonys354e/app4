import 'package:app_4_dice/question.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int questionNumber =0;

 

   List<Question> question1=[
    Question(questionText: "¿el hombre llego a la luna?", questionAnswer: true),
    Question(questionText: "¿el dia miercoles tiene clases de prog movil", questionAnswer: true),
    Question(questionText: "¿Ikaro llego al sol?", questionAnswer: false),
    Question(questionText: "¿Goku es el guerrero mas poderoso del universo?", questionAnswer: false),
    Question(questionText: "la tierra es plana ?", questionAnswer: true),

   ]; 

  List<Widget> scoreKeeper = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                 question1[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = question1[questionNumber].questionAnswer;
                  if (correctAnswer == true){
                  scoreKeeper.add(Icon(Icons.check,color:Colors.greenAccent,));
                  }else {
                    scoreKeeper.add(Icon(Icons.close,color:Colors.redAccent,));
                    
                  }
                  setState(() {});
                  questionNumber++;
                },
                child: Text("Verdadero"),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = question1[questionNumber].questionAnswer;
                  if (correctAnswer == false){
                  scoreKeeper.add(Icon(Icons.check,color:Colors.greenAccent,));
                  }else {
                    scoreKeeper.add(Icon(Icons.close,color:Colors.redAccent,));
                    
                  }
                  setState(() {});
                  questionNumber++;
                },
                child: Text("Falso"),
                color: Colors.redAccent,
              ),
            ),
          ),
        
        Row(
          children: scoreKeeper,
        )
        ],
      ),
    );
  }
}
