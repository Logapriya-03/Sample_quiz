import 'package:flutter/material.dart';
import 'package:quiz_sample/questions_screen.dart';
import 'package:quiz_sample/start_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {

    // Widget screenWidget;
    // if(activeScreen == 'start-screen'){
    //   screenWidget = StartScreen(switchScreen);
    // }
    // else{
    //   screenWidget = const QuestionPage();
    // }

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen== 'questions-screen'){
      screenWidget  = QuestionPage(
        onSelectedAnswer: chooseAnswer,
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 53, 81, 168),
              Color.fromARGB(255, 241, 190, 16),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
          child: screenWidget
      ),
    );
  }
}
