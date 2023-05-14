import 'package:flutter/material.dart';
import 'package:quiz_practice/data/questions.dart';
import 'package:quiz_practice/questions_screen.dart';
import 'package:quiz_practice/result_screen.dart';
import 'package:quiz_practice/start_screen.dart';


class Quiz extends StatefulWidget{
const Quiz({super.key});

@override
State<Quiz> createState(){
  return _QuizState();
}
}
class _QuizState extends State<Quiz>{
   List<String> SelectedAnswer = [];

  var activeWidget = 'start-screen';
  

  void switchScreen(){
    setState(() {
      activeWidget = 'questions-screen';
    });
  }
void chooseAnswer (answer){
  SelectedAnswer.add(answer);

  if(SelectedAnswer.length == question.length){
    setState(() {
      SelectedAnswer=[];
      activeWidget = 'results-screen';
    });
  }
}


  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeWidget == 'questions-screen') {
      screenWidget = Questions(onSelectAnswer: chooseAnswer);
    };

    if (activeWidget == 'results-screen'){
      screenWidget = const Results();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 68, 59, 196),
              Color.fromARGB(255, 106, 43, 189)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}