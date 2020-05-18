import 'package:flutodo/models/task_data.dart';
import 'package:flutodo/screens/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.lightBlue,
      ),
      home: TasksScreen(),
    );
  }
}
