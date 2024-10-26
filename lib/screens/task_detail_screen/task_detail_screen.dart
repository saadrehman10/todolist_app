import 'package:flutter/material.dart';
import 'package:todolist_app/util/color.dart';
import 'package:todolist_app/util/text.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Text(
          TaskDetailScreenText.headingTitle,
          style: TextStyle(color: AppColors.tertiary, fontSize: 40),
        ),
      ],
    )));
  }
}
