
import 'package:flutter/material.dart';
import 'package:quiz_dev/Quiz_Challenge/quiz_challenge_page.dart';
import 'package:quiz_dev/Quiz_Challenge/widgets/awnser/awnser_widget.dart';
import 'package:quiz_dev/Quiz_Challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:quiz_dev/Quiz_Challenge/widgets/quiz/quiz_widget.dart';
import 'package:quiz_dev/home/home_page.dart';
import 'package:quiz_dev/home/widgets/appbar/app_bar_widget.dart';
import 'package:quiz_dev/home/widgets/quiz_card/quiz_card.dart';
import 'package:quiz_dev/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: SplashPage(),
      debugShowCheckedModeBanner:false,
    );
  }
}
