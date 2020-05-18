import 'package:flutodo/models/task.dart';
import 'package:flutter/material.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Ekmek al'),
    Task(name: 'Salam al'),
  ];

  void addTask(String taskTitle) {
    Task task = Task(name: taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
