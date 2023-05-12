import 'package:flutter/material.dart';
import 'package:quiz_practice/answer_button.dart';
import 'package:quiz_practice/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {

    final currentQuestion = question[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white, 
              fontSize: 15),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.answer.map((answer){
              return AnswerButton(answerText: answer, 
              onTap: () {});
            })
            
            // AnswerButton(answerText: currentQuestion.answer[0], 
            // onTap: () {}),
            // AnswerButton(answerText: 'Answer 2', onTap: () {}),
            // AnswerButton(answerText: 'Answer 3', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
