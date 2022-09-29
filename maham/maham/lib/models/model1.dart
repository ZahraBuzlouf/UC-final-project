import 'package:flutter/material.dart';
import 'package:maham/models/model2.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.desc,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: yellow1,
          iconColor: yellow3,
          btnColor: yellow2,
          left: 3,
          done: 1,
          desc: [
            {
              'time': '9:00 am',
              'title': 'ريوق مع حمود',
              'slot': '9:00 - 10:00 am',
              'tlColor': green3,
              'bgColor': green1,
            },
            {
              'time': '10:00 am',
              'title': 'ابدل القميص',
              'slot': '10:00 - 12:00 am',
              'tlColor': blue3,
              'bgColor': blue1,
            },
            {
              'time': '11:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '12:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'امر يما رقية',
              'slot': '1:00 - 2:00 pm',
              'tlColor': yellow3,
              'bgColor': yellow1,
            },
            {
              'time': '2:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '4:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '5:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '6:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '7:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ]),
      Task(
        iconData: Icons.cases_rounded,
        title: 'College',
        bgColor: green1,
        iconColor: green3,
        btnColor: green2,
        left: 0,
        done: 2,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Home',
        bgColor: blue1,
        iconColor: blue3,
        btnColor: blue2,
        left: 2,
        done: 1,
      ),
      Task(isLast: true)
    ];
  }
}
