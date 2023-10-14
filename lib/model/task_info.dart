import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:my_todo/model/task.dart';

class TaskInfo extends ChangeNotifier
{
  final List<Task> _tasks = [
    Task (name : 'support palestine') ,
    Task (name : 'pray for palestine') ,
    Task (name : 'support gaza') ,
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String addedTaskTitle) {
    final task = Task(name: addedTaskTitle);
    _tasks.add(task);
    // why here ?!
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    // why here ?!
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    // why here ?!
    notifyListeners();
  }

}