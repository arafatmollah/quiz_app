import 'package:flutter/material.dart';

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
    return SizedBox(
      
      width: double.infinity,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children:   [
         const Text('Question app created'),
         const SizedBox(height: 20,),
        ElevatedButton(onPressed: () {},
         child: const Text('Answer 1'),
         ),
         ElevatedButton(onPressed: () {},
         child: const Text('Answer 1'),
         ),
         ElevatedButton(onPressed: () {},
         child: const Text('Answer 1'),
         ),
      ],
    ),
    );
  }
}
