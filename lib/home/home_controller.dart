import 'package:flutter/cupertino.dart';
import 'package:quiz_dev/core/app_images.dart';
import 'package:quiz_dev/home/home_repository.dart';
import 'package:quiz_dev/home/home_state.dart';
import 'package:quiz_dev/shared/models/awnsers_model.dart';
import 'package:quiz_dev/shared/models/question_model.dart';
import 'package:quiz_dev/shared/models/quiz_model.dart';
import 'package:quiz_dev/shared/models/user_model.dart';

class HomeController {
  final stateNotificao = ValueNotifier<HomeState>(HomeState.empty);
  set state (HomeState state) => stateNotificao.value = state;
  HomeState get state => stateNotificao.value;


  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();


  void getUser() async {
    state = HomeState.carregando;

    user = await repository.getUser();
    state = HomeState.sucesso;
  }

  void getQuizzes() async {
    state = HomeState.carregando;

    quizzes = await repository.getQuizzes();
    state = HomeState.sucesso;
  }
}
