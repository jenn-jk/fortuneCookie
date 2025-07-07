import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel extends ChangeNotifier {
  // properties
  final _fortuneList = [
    "You will find a new match in Bumble",
    "Cat is going to call you back",
    "You're going to get a cool job",
    "You're going to buy honda city",
    "You're going to get a job in Chennai",
  ];
  String _currentFortune = "";

  // constructor
  FortuneModel() {
    getMyFortune();
  }

  // getter
  String get currentFortune => _currentFortune;

  // methods
  void getMyFortune() {
    var random = Random();
    int randInt = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[randInt];
    notifyListeners();
  }
}
