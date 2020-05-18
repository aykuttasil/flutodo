import 'package:flutodo/models/task.dart';
import 'package:flutodo/models/task_data.dart';
import 'package:flutodo/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            print(index);
            final task = taskData.tasks[index];

            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },

            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
