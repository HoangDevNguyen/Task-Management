import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class TaskModel{
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;

  TaskModel({this.icon, this.title, this.bgColor, this.iconColor, this.btnColor,
      this.left, this.done, this.isLast= false});

  static List<TaskModel> generateTasks(){
    return [
      TaskModel(
          icon: Icons.person_rounded,
          title: "Personal",
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          btnColor: kBlue,
          left: 5,
          done: 3,
          isLast: false),
      TaskModel(
          icon: Icons.work,
          title: "Work",
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          left: 1,
          done: 4,
          isLast: false),
      TaskModel(
          icon: Icons.favorite_rounded,
          title: "Health",
          bgColor: kRedLight,
          iconColor: kRedDark,
          btnColor: kRed,
          left: 2,
          done: 6,
          isLast: false),
      TaskModel(
          icon: Icons.person_rounded,
          title: "Personal",
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          btnColor: kBlue,
          left: 5,
          done: 3,
          isLast: true),

    ];
  }
}