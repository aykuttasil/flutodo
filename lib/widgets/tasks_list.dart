import 'package:flutodo/models/task.dart';
import 'package:flutodo/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print(index);
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (isChecked) {
            setState(() {
              widget.tasks[index].isDone = isChecked;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
