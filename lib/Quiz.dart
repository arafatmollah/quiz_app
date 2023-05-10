import 'package:flutter/material.dart';
import 'package:quiz_practice/start_screen.dart';


class Quiz extends StatefulWidget{
const Quiz({super.key});

@override
State<Quiz> createState(){
  return _QuizState();
}
}
class _QuizState extends State<Quiz>{

  @override
  Widget build(context) {
    // TODO: implement build
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
          child: const StartScreen(),
        ),
      ),
    );
  }
}