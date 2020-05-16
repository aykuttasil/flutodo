import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Flutodo',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12 Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: TasksList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;

  TaskTile({this.title, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool value) {},
      ),
    );
  }
}

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<TaskTile> list = [
    TaskTile(title: 'ABC task', isChecked: true),
    TaskTile(title: 'ABCD task', isChecked: false),
    TaskTile(title: 'ABCH task', isChecked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list,
    );
  }
}


