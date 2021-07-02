import 'package:flutter/material.dart';
import 'package:harry_potter_houses_starting/core/core.dart';

import 'questions.dart';

class Helper {
  int _questionNumber = 0;

  List<Question> _questionData = [
    Question(
      //_questionNumber = 0
      questionTitle:
          'E a primeira questão é: com quais dos substantivos você se identifica mais?',
      choice1: 'Coragem e gentileza',
      choice2: 'Ambição e inteligência',
      id: 0,
      backgroundChoiceButton: AppColors.green,
      backgroundChoiceTitle: AppColors.backTitleMain.withOpacity(0.6),
      flexTotal: 12,
      flexButton: 2,
    ),
    Question(
      //_questionNumber = 1
      questionTitle:
          'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
      choice1: 'Prefiro quebrar as regras',
      choice2: 'Utilizo a inteligência e estudos',
      id: 0,
      backgroundChoiceButton: AppColors.green,
      backgroundChoiceTitle: AppColors.backTitleMain.withOpacity(0.6),
      flexTotal: 12,
      flexButton: 2,
    ),
    Question(
      //_questionNumber = 2
      questionTitle: 'O que se encaixa melhor com o seu perfil?',
      choice1: 'Ousadia e astúcia',
      choice2: 'Paciência e sinceridade',
      id: 0,
      backgroundChoiceButton: AppColors.green,
      backgroundChoiceTitle: AppColors.backTitleMain.withOpacity(0.6),
      flexTotal: 12,
      flexButton: 2,
    ),
    Question(
      //_questionNumber = 3
      questionTitle: 'Você ficará muito bem aos cuidados da SONSERINA',
      choice1: 'Refazer teste',
      choice2: '',
      id: 3,
      backgroundChoiceButton: AppColors.backSonserina,
      backgroundChoiceTitle: AppColors.backSonserina.withOpacity(0.6),
      flexTotal: 34,
      flexButton: 5,
    ),
    Question(
      //_questionNumber = 4
      questionTitle: 'Você ficará muito bem aos cuidados da LUFA-LUFA!',
      choice1: 'Refazer teste',
      choice2: '',
      id: 4,
      backgroundChoiceButton: AppColors.backLufalufa,
      backgroundChoiceTitle: AppColors.backLufalufa.withOpacity(0.6),
      flexTotal: 46,
      flexButton: 6,
    ),
    Question(
      //_questionNumber = 5
      questionTitle: 'Você ficará muito bem aos cuidados da GRIFINÓRIA!',
      choice1: 'Refazer teste',
      choice2: '',
      id: 5,
      backgroundChoiceButton: AppColors.backGrifinoria,
      backgroundChoiceTitle: AppColors.backGrifinoria.withOpacity(0.6),
      flexTotal: 34,
      flexButton: 5,
    ),
    Question(
      //_questionNumber = 6
      questionTitle: 'Você ficará muito bem aos cuidados da CORVINAL!',
      choice1: 'Refazer teste',
      choice2: '',
      id: 6,
      backgroundChoiceButton: AppColors.backCorvinal,
      backgroundChoiceTitle: AppColors.backCorvinal.withOpacity(0.6),
      flexTotal: 34,
      flexButton: 5,
    )
  ];
  void nextQuestion(int userChoice) {
    if (userChoice == 1 && _questionNumber == 0) {
      _questionNumber = 2;
    } else if (userChoice == 2 && _questionNumber == 0) {
      _questionNumber = 1;
    } else if (userChoice == 1 && _questionNumber == 2) {
      _questionNumber = 5;
    } else if (userChoice == 2 && _questionNumber == 2) {
      _questionNumber = 4;
    } else if (userChoice == 1 && _questionNumber == 1) {
      _questionNumber = 3;
    } else if (userChoice == 2 && _questionNumber == 1) {
      _questionNumber = 6;
    } else if (_questionNumber == 3 ||
        _questionNumber == 4 ||
        _questionNumber == 5 ||
        _questionNumber == 6) {
      restart();
    }
  }

  void restart() {
    _questionNumber = 0;
  }

  int getQuestionNumber() {
    return _questionData[_questionNumber].id;
  }

  int getFlexTotal() {
    return _questionData[_questionNumber].flexTotal;
  }

  int getFlexButton() {
    return _questionData[_questionNumber].flexButton;
  }

  String getQuestion() {
    return _questionData[_questionNumber].questionTitle;
  }

  String getChoice1() {
    return _questionData[_questionNumber].choice1;
  }

  String getChoice2() {
    return _questionData[_questionNumber].choice2;
  }

  Color getBackgroundColor() {
    return _questionData[_questionNumber].backgroundChoiceButton;
  }

  Color getBackgroundColorTitle() {
    return _questionData[_questionNumber].backgroundChoiceTitle;
  }

  Color colorBackgroundQuestion() {
    if (buttonShouldBeVisible() == true) {
      return getBackgroundColorTitle();
    } else {
      return getBackgroundColor().withOpacity(.6);
    }
  }

  bool buttonShouldBeVisible() {
    if (_questionNumber == 0 || _questionNumber == 1 || _questionNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
