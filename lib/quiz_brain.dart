// ignore: unused_import
import 'package:app_4_dice/home_page.dart';
import 'package:app_4_dice/question.dart';
class QuizBrain {
  final List<Question> _questions = [
   Question(questionText: "¿el hombre llego a la luna?", questionAnswer: true),
    Question(questionText: "¿el dia miercoles tiene clases de prog movil", questionAnswer: true),
    Question(questionText: "¿Ikaro llego al sol?", questionAnswer: false),
    Question(questionText: "¿Goku es el guerrero mas poderoso del universo?", questionAnswer: false),
    Question(questionText: "la tierra es plana ?", questionAnswer: true),

  ];

  int _questionNumber = 0;

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
  bool isFinished(){
    if (_questionNumber >= _questions.length - 1) {
      return true;
  }
  return false;
}
 void restart(){
  _questionNumber = 0;
 }
}