import 'package:flutodo/models/task.dart';
import 'package:flutodo/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  final List<Task> taskList = [
    Task(name: 'Ekmek al'),
    Task(name: 'Peynir al'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print(index);
        return TaskTile(
          title: taskList[index].name,
          isChecked: taskList[index].isDone,
        );
      },
      itemCount: taskList.length,
    );
  }
}
