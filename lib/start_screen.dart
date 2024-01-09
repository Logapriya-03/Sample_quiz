import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/quiz_logo.png',
          height: 350,
          width: 350,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20.0)),
            child: Center(
              child: Text(
                'Learn Flutter the fun way',
                style:
                GoogleFonts.aBeeZee(fontSize: 20.0, color: Colors.amber),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(216, 222, 118, 53),
                  Color.fromARGB(202, 250, 192, 6),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: TextButton.icon(
            onPressed: startQuiz,
            label: const Icon(Icons.arrow_circle_right_outlined),
            icon: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.indigo, fontSize: 18.0),
            ),
          ),
        )
      ],
    );
  }
}
