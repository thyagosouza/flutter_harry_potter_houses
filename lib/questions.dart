import 'package:flutter/material.dart';

class Question {
  String questionTitle;
  String choice1;
  String choice2;
  int id;
  Color backgroundChoiceButton;
  Color backgroundChoiceTitle;
  int flexTotal;
  int flexButton;

  Question(
      {this.questionTitle,
      this.choice1,
      this.choice2,
      this.id,
      this.backgroundChoiceButton,
      this.backgroundChoiceTitle,
      this.flexTotal,
      this.flexButton});
}
