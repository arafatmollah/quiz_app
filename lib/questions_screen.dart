import 'package:flutter/material.dart';
import 'package:quiz_practice/answer_button.dart';
import 'package:quiz_practice/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 1;

  void answerQuestion(String SelectedAnswer){
    widget.onSelectAnswer(SelectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(context) {

    final currentQuestion = question[currentQuestionIndex];
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
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 162, 156, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(answerText: answer, 
              onTap: (){
                answerQuestion(answer);
              });
            })
            
            
          ],
        ),
      ),
    );
  }
}
