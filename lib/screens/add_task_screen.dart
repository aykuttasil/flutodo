import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (newText) {
              print(newText);
            },
          ),
          Container(
            color: Colors.lightBlue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('ADD TASK'),
            ),
          )
        ],
      ),
    );
  }
}
