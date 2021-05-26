

import 'package:flutter/material.dart';

class ChallengeController {
  final currentPageNotifer = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifer.value;
  set currentPage (int value ) => currentPageNotifer.value = value;


  int acertos = 0;




}