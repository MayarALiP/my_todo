import 'package:flutter/material.dart';
import 'package:my_todo/model/task_info.dart';
import 'package:my_todo/viewModel/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskInfo>(
        builder: (context,taskData,child){
          return ListView.builder(
              itemBuilder: (context,index){
                final task = taskData.tasks[index];
                return TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  callback: (checkboxState){
                    taskData.updateTask(task);
                  },
                  longPressCallback:(){
                  taskData.deleteTask(task);
               },
             );
           },
            itemCount: taskData.taskCount,
     );
    },
  );
 }
}

