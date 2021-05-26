import 'package:flutter/material.dart';
import 'package:quiz_dev/Quiz_Challenge/quiz_challenge_page.dart';
import 'package:quiz_dev/Quiz_Challenge/widgets/quiz/quiz_widget.dart';
import 'package:quiz_dev/core/app_colors.dart';
import 'package:quiz_dev/home/home_controller.dart';
import 'package:quiz_dev/home/home_state.dart';
import 'package:quiz_dev/home/widgets/appbar/app_bar_widget.dart';
import 'package:quiz_dev/home/widgets/level_button/level_button_widget.dart';
import 'package:quiz_dev/home/widgets/quiz_card/interface_card.dart';
import 'package:quiz_dev/home/widgets/quiz_card/quiz_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.getUser();
    controller.getQuizzes();
    controller.stateNotificao.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.sucesso) {
      return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeveButtonWidget(label: "Fácil"),
                  LeveButtonWidget(label: "Médio"),
                  LeveButtonWidget(label: "Difícil"),
                  LeveButtonWidget(label: "Perito"),
                ],
              ),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    crossAxisCount: 2,
                    children: controller.quizzes!
                        .map((e) => QuizCardWidget(
                      image: e.image,
                              title: e.title,
                              percent: e.questionAnswered / e.questions.length,
                              completed:
                                  "${e.questionAnswered}/${e.questions.length}",

                      onTap: (){
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context)=> ChallengePage(questions: e.questions,
                                     title: e.title,
                                   )));
                      },
                            ),





                    )
                        .toList(),




                ),

              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
