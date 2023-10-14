import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callback;
  final Function longPressCallback;

   const TaskTile({super.key,
        required this.isChecked,
        required this.taskTitle,
        required this.callback,
        required this.longPressCallback
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback(),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough
                : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.yellow[200],
        value: isChecked,
        onChanged: callback(),
      ),
    );
  }
}