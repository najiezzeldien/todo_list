import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  bool isChecked = false;
  List<Task> _tasks = [
    Task(
      name: 'Buy milk',
    ),
    Task(
      name: 'Buy eggs',
    ),
    Task(
      name: 'Buy bread',
    ),
  ];
  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
 void updateTask(Task task){
   task.toggleDone();
   notifyListeners();
  }
  void deleteTask(Task task){

    _tasks.remove(task);
    notifyListeners();
  }
}
