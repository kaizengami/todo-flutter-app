import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallbeck;
  final Function longPressCallbeck;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallbeck,
      this.longPressCallbeck});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallbeck,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallbeck,
      ),
    );
  }
}
