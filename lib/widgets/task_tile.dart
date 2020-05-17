import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String title;
  final bool isChecked;

  TaskTile({this.title, this.isChecked});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool value) {
          setState(() {
            isChecked = !isChecked;
          });
        },
      ),
    );
  }
}
